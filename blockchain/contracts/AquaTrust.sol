// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract AquaTrust {
    // 1. Struct: Định nghĩa cấu trúc của một lô hàng tôm
    struct Lot {
        uint256 id;
        address payable seller;
        address payable buyer;
        uint256 price;
        string ipfsCid; // Link chứa video/ảnh chứng nhận AI đếm tôm
        bool isSold;
        bool isDelivered;
    }

    // 2. State Variables: Lưu trữ dữ liệu
    uint256 public lotCount = 0;
    mapping(uint256 => Lot) public lots;

    // 3. Events: Phát tín hiệu ra ngoài cho Frontend (Next.js của Thảo) bắt được
    event LotCreated(uint256 indexed id, address indexed seller, uint256 price, string ipfsCid);
    event DepositMade(uint256 indexed id, address indexed buyer, uint256 amount);

    // 4. Constructor: Chạy 1 lần duy nhất khi Deploy hợp đồng
    constructor() {
        // Nơi setup cấu hình ban đầu (ví dụ: gán quyền Admin phân xử tranh chấp)
    }
}