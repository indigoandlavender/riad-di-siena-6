/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "res.cloudinary.com",
      },
      {
        protocol: "https",
        hostname: "drive.google.com",
      },
      {
        protocol: "https",
        hostname: "lh3.googleusercontent.com",
      },
    ],
  },
  async redirects() {
    return [
      // Old Squarespace individual room pages
      { source: "/room-2-tresor-cache", destination: "/rooms", permanent: true },
      { source: "/room-1-jardin-secret", destination: "/rooms", permanent: true },
      { source: "/room-3-ciel-ouvert", destination: "/rooms", permanent: true },
      // Old Squarespace content pages
      { source: "/marrakesh-1", destination: "/", permanent: true },
      { source: "/stay-at-riad-di-siena", destination: "/rooms", permanent: true },
      { source: "/riad-life", destination: "/the-riad", permanent: true },
      { source: "/about-us", destination: "/philosophy", permanent: true },
      { source: "/book-a-room", destination: "/rooms", permanent: true },
      { source: "/booking-conditions-1", destination: "/booking-conditions", permanent: true },
    ];
  },
};

export default nextConfig;
