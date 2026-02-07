import { NextResponse } from "next/server";
import { getTableData, insertRow } from "@/lib/supabase";
import { sendBookingEmails, sendContactEmail } from "@/lib/email";

export const revalidate = 0;

export async function GET() {
  try {
    const bookings = await getTableData("master_guests");
    return NextResponse.json(bookings);
  } catch (error) {
    console.error("Error fetching bookings:", error);
    return NextResponse.json([], { status: 500 });
  }
}

export async function POST(request: Request) {
  try {
    const body = await request.json();
    
    const bookingId = `RDS-${Date.now()}`;
    const timestamp = new Date().toISOString();

    const {
      firstName, lastName, email, phone, message, guests, total,
      room, roomId, checkIn, checkOut, nights,
      property, tent, tentId, tentLevel, experience, experienceId,
      paypalOrderId, paypalStatus,
      name, roomPreference,
      itemName, totalEUR, paypalTransactionId,
    } = body;

    const guestFirstName = firstName || name?.split(" ")[0] || "";
    const guestLastName = lastName || name?.split(" ").slice(1).join(" ") || "";
    const propertyName = property || "Riad di Siena";
    const accommodationName = room || tent || experience || roomPreference || itemName || "";
    const finalTotal = total || totalEUR || 0;
    const finalPaypalId = paypalOrderId || paypalTransactionId || "";
    const finalPaypalStatus = paypalStatus || (paypalTransactionId ? "COMPLETED" : "PENDING");

    const bookingData = JSON.stringify({
      firstName: guestFirstName, lastName: guestLastName,
      email, phone, message, guests, total: finalTotal,
      room: accommodationName, roomId, checkIn, checkOut, nights,
      property: propertyName, tent, tentId, tentLevel,
      experience, experienceId,
      paypalOrderId: finalPaypalId, paypalStatus: finalPaypalStatus,
      roomPreference,
    });

    const success = await insertRow("master_guests", {
      booking_id: bookingId,
      timestamp,
      first_name: guestFirstName,
      last_name: guestLastName,
      email: email || "",
      phone: phone || "",
      check_in: checkIn || "",
      check_out: checkOut || "",
      guests: guests || "",
      total: String(finalTotal),
      paypal_status: finalPaypalStatus,
      paypal_order_id: finalPaypalId,
      room: accommodationName,
      property: propertyName,
      booking_data: bookingData,
    });

    if (success) {
      // Send to Make.com webhook
      const webhookUrl = process.env.MAKE_BOOKING_WEBHOOK_URL;
      if (webhookUrl && checkIn && finalPaypalStatus === "COMPLETED") {
        try {
          await fetch(webhookUrl, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              booking_id: bookingId, source: "Website", status: "confirmed",
              first_name: guestFirstName, last_name: guestLastName,
              email, phone: phone || "", property: propertyName,
              room: accommodationName, check_in: checkIn,
              check_out: checkOut || "", nights: nights || 1,
              guests: guests || 1, total_eur: finalTotal,
              special_requests: message || "",
              paypal_transaction_id: finalPaypalId, created_at: timestamp,
            }),
          });
        } catch (webhookError) {
          console.error("Make.com webhook failed:", webhookError);
        }
      }

      // Send confirmation emails if payment was successful
      if (finalPaypalStatus === "COMPLETED" && email) {
        try {
          await sendBookingEmails({
            bookingId, firstName: guestFirstName, lastName: guestLastName,
            email, phone, property: propertyName, room: accommodationName,
            tent, experience, checkIn, checkOut,
            nights: nights || 1, guests: guests || 1,
            total: finalTotal, paypalOrderId: finalPaypalId, message,
          });
        } catch (emailError) {
          console.error("Failed to send booking emails:", emailError);
        }
      }
      
      // Send contact form email (no payment, just a message)
      if (finalPaypalStatus !== "COMPLETED" && !checkIn && message && email) {
        try {
          await sendContactEmail({
            name: `${guestFirstName} ${guestLastName}`.trim(),
            email, phone, message,
          });
        } catch (emailError) {
          console.error("Failed to send contact email:", emailError);
        }
      }
      
      return NextResponse.json({ success: true, bookingId });
    } else {
      return NextResponse.json({ success: false, error: "Failed to save booking" }, { status: 500 });
    }
  } catch (error) {
    console.error("Error creating booking:", error);
    return NextResponse.json({ success: false, error: "Server error" }, { status: 500 });
  }
}
