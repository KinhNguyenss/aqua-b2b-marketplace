# 🦐 AquaTrust - B2B Seafood Trading Platform (AI & Web3)

![Next.js](https://img.shields.io/badge/Next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![Solidity](https://img.shields.io/badge/Solidity-363636?style=for-the-badge&logo=solidity&logoColor=white)
![YOLO](https://img.shields.io/badge/AI_YOLO-FF4F8B?style=for-the-badge&logo=openai&logoColor=white)

AquaTrust là nền tảng thương mại điện tử B2B chuyên biệt dành cho ngành xuất khẩu thủy sản (tôm). Dự án kết hợp **Trí tuệ nhân tạo (AI)** để tự động hóa khâu kiểm định số lượng và **Blockchain (Smart Contract)** để đảm bảo tính minh bạch, an toàn tài chính (Ký quỹ - Escrow) cho cả người mua và người bán.

---

## 🌟 Tính năng nổi bật (Core Features)

### 1. Phân hệ AI & Dữ liệu Phân tán

- **Đếm tự động (YOLO):** Tự động phân tích video băng chuyền để đếm chính xác số lượng tôm.
- **Gắn thẻ Metadata:** Tự động đính kèm tọa độ GPS và Timestamp vào hình ảnh/video.
- **Lưu trữ IPFS:** Upload trực tiếp file gốc lên mạng lưới phân tán qua Pinata để lấy mã định danh (CID) bất biến.

### 2. Phân hệ Smart Contract & Web3

- **Đăng nhập Web3:** Xác thực không cần mật khẩu thông qua chữ ký MetaMask (Chuẩn JWT Auth).
- **Proof of Origin:** Ghi nhận CID, thông số lô hàng và địa chỉ ví của Farmer vĩnh viễn trên On-chain.
- **Ký quỹ Escrow & Time-lock:** Khóa tiền của Buyer vào Smart Contract và tự động giải ngân cho Seller khi giao dịch hoàn tất hoặc sau 14 ngày.
- **Hoàn tiền (Refund):** Cơ chế xử lý tranh chấp thông qua Admin.

### 3. Phân hệ B2B Marketplace (Buyer & Seller)

- **Kênh Người Bán:** Đăng bán lô hàng, upload chứng từ pháp lý (HACCP, FDA) và quản lý doanh thu.
- **Kênh Người Mua:** Tìm kiếm lô hàng đạt chuẩn quốc tế, kiểm tra video gốc trên IPFS và thanh toán Web3.
- **Admin Dashboard:** Phân quyền, thống kê dòng tiền và kiểm duyệt (ẩn/xóa) các lô hàng rác.

---

## 🛠 Công nghệ sử dụng (Tech Stack)

- **Frontend:** Next.js, Tailwind CSS, Ethers.js
- **Backend:** Node.js, Express.js, JWT Authentication, Multer
- **Database:** MySQL (với Prisma/Sequelize ORM)
- **Blockchain:** Solidity, Hardhat, Ethereum Sepolia Testnet
- **AI & Vision:** Python, YOLO Model (train qua Google Colab/Kaggle)
- **Storage:** IPFS (Pinata SDK)

---

## 🚀 Hướng dẫn Cài đặt (Installation Guide)

### 1. Yêu cầu hệ thống (Prerequisites)

- Node.js (v18+)
- Python (v3.9+)
- MySQL Server
- Ví MetaMask (đã chuyển sang mạng Sepolia Testnet)

### 2. Cài đặt các phân hệ

**Bước 1: Clone repository**

```bash
git clone https://github.com/KinhNguyenss/aqua-b2b-marketplace.git
```

````

**Bước 2: Setup Database & Backend**

```bash
cd backend
npm install
# Tạo file .env và điền các thông số (PORT, DB_HOST, JWT_SECRET, PINATA_API_KEY...)
# Chạy migration tạo bảng
npx prisma migrate dev
npm run dev

```

**Bước 3: Setup Frontend**

```bash
cd frontend
npm install
# Tạo file .env.local và điền NEXT_PUBLIC_API_URL, NEXT_PUBLIC_CONTRACT_ADDRESS
npm run dev

```

**Bước 4: Setup Smart Contract (Local/Testnet)**

```bash
cd contracts
npm install
# Biên dịch contract
npx hardhat compile
# Deploy lên local node hoặc Sepolia
npx hardhat run scripts/deploy.js --network localhost

```

---
````
