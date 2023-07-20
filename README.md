# HCMUIT_thesistemplate

## Require:
- Khóa luận được build bằng pdflatex, đã test thành công trên Ubuntu 2022. Để sử dụng các phiên bản hệ điều hành khác, sinh viên cần tìm hiểu và cài đặt đúng các gói của texlive.
- Đối với phiên bản Ubuntu 2022, sinh viên cài đặt thư viện bằng cách
    ```
    apt get install make
    make
    ```
    Makefile sẽ cài đặt các gói cần thiết để build project.
- Hoặc sinh viên có thể tải source code về rồi import vào [Overleaf](https://www.overleaf.com/). Template có sẵn trên `Overleaf` sẽ sớm có ở phiên bản sau.
## Guideline
- Các phần trong project được thiết kế theo quy định của khóa luận vào năm 2021, các năm sau có thể thay đổi.
- Cấu trúc thư mục project bao gồm
  - chapters: là nơi chứa toàn bộ các phần trong khóa luận. Bao gồm hai phần chính là `front` và `main`
    - `front`: Những thành phần không đánh số chính, bao gồm `Quyết định thành lập hội đồng chấm khóa luận`, `Lời cảm ơn` và `Danh mục từ viết tắt`
    - `main`: Các phần còn lại, bao gồm `Tóm tắt khóa luận` và các chương khác.
    - Những phần khác được yêu cầu trong khóa luận như `Danh sách hình vẽ`, `Danh sách bảng`... được tự động tạo, quy định ở file `thesis.tex`
  - graphics: Chứa hình ảnh chèn vào trong khóa luận, được chia thành các chương khác nhau
  - `Makefile`: Chứa require package phải cài để build khóa luận
  - `references.bib`: Chứa tài liệu tham khảo theo định dạng BibTex. Sinh viên có thể lấy định dạng này ở trên trích dẫn của Google Scholar
  - `thesis.cls`: Thư viện được thiết kế để build khóa luận, không khuyến khích thay đổi.
  - `thesis.tex`: File chính của toàn khóa luận, quy định chi tiết các thông tin cũng như sắp xếp chương mục trong toàn khóa luận.
  - `thesis.pdf`: Khóa luận ví dụ đã build
- Để build khóa luận, sinh viên thực hiện
    ```
    make build
    ```
**Các thắc mắc khác, sinh viên có thể hỏi lại https://github.com/sonnh-uit/HCMUIT_thesistemplate/issues. Mình sẽ cố gắng trả lời sớm nhất có thể.**