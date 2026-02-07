import type { Metadata } from "next";
import Script from "next/script";

export const metadata: Metadata = {
  title: "Rooms in Marrakech Medina",
  description:
    "Four individually designed rooms at Riad di Siena, a 300-year-old riad in Marrakech medina. Queen beds, en-suite bathrooms, air conditioning, zellige details, rooftop breakfast included. From €80/night.",
  keywords: [
    "riad rooms marrakech",
    "marrakech medina accommodation",
    "traditional riad rooms",
    "boutique hotel marrakech",
    "riad with breakfast marrakech",
  ],
  openGraph: {
    title: "Rooms at Riad di Siena | Marrakech Medina",
    description:
      "Four rooms around a courtyard fountain in a 300-year-old Marrakech riad. Queen beds, en-suite bathrooms, rooftop breakfast included. From €80/night.",
  },
  alternates: {
    canonical: "https://www.riaddisiena.com/rooms",
  },
};

const roomsSchema = {
  "@context": "https://schema.org",
  "@type": "LodgingBusiness",
  "@id": "https://www.riaddisiena.com/#lodgingbusiness",
  "name": "Riad di Siena",
  "url": "https://www.riaddisiena.com/rooms",
  "containsPlace": [
    {
      "@type": "HotelRoom",
      "name": "Jardin Secret",
      "description": "Ground-floor room opening onto the courtyard garden. Queen bed, en-suite bathroom, zellige details.",
      "bed": { "@type": "BedDetails", "typeOfBed": "Queen", "numberOfBeds": 1 },
      "occupancy": { "@type": "QuantitativeValue", "value": 2 },
      "amenityFeature": [
        { "@type": "LocationFeatureSpecification", "name": "En-suite bathroom", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Air conditioning", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Free WiFi", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Breakfast included", "value": true },
      ],
    },
    {
      "@type": "HotelRoom",
      "name": "Trésor Caché",
      "description": "First-floor room filled with light. Queen bed, en-suite bathroom, courtyard views.",
      "bed": { "@type": "BedDetails", "typeOfBed": "Queen", "numberOfBeds": 1 },
      "occupancy": { "@type": "QuantitativeValue", "value": 2 },
      "amenityFeature": [
        { "@type": "LocationFeatureSpecification", "name": "En-suite bathroom", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Air conditioning", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Free WiFi", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Breakfast included", "value": true },
      ],
    },
    {
      "@type": "HotelRoom",
      "name": "Ciel Ouvert",
      "description": "Top-floor room with private terrace and Atlas Mountain views. Queen bed, en-suite bathroom.",
      "bed": { "@type": "BedDetails", "typeOfBed": "Queen", "numberOfBeds": 1 },
      "occupancy": { "@type": "QuantitativeValue", "value": 2 },
      "amenityFeature": [
        { "@type": "LocationFeatureSpecification", "name": "En-suite bathroom", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Air conditioning", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Free WiFi", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Breakfast included", "value": true },
        { "@type": "LocationFeatureSpecification", "name": "Private terrace", "value": true },
      ],
    },
  ],
};

export default function RoomsLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <Script id="rooms-schema" type="application/ld+json">
        {JSON.stringify(roomsSchema)}
      </Script>
      {children}
    </>
  );
}
