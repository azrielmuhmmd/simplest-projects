print("","="*69,"\n ===================== PROGRAM OPERASI MATRIKS =======================\n","="*69)
print("Silakan pilih jenis operasi dua buah Matriks : ")
print("1. Perkalian")
print("2. Penjumlahan")
print("3. Pengurangan")
opt = int(input("Silakan masukkan nomor pilihan Anda : ")) # variabel pemilihan nomor opsi operasi dua buah matriks
while (opt != 1) and (opt != 2) and (opt != 3):
    print("Nomor opsi operasi dua buah matriks yang Anda masukkan tidak tersedia !")
    opt = int(input("Silakan masukkan ulang nomor pilihan operasi matriks Anda : "))
print("="*70)
m1 = [] # matriks pertama
m2 = [] # matriks kedua
m3 = [] # matriks hasil operasi m1 dan m2
def entriMatriks(m,row,col): # Fungsi input entri-entri matriks-matriks operasi (m1 dan m2)
    for i in range(row):
        x = []
        for j in range(col):
            x.append(int(input(f"Masukkan entri ke [{i+1}, {j+1}] : ")))
        m.append(x)
def printMatriks(m,row,col): # Fungsi untuk printing matriks-matriks operasi (m1 dan m2)
    for i in range(row):
        for j in range(col):
            print(m[i][j], end = '   ')
        print()
print("Silakan lakukan input matriks pertama !") # Proses input ukuran baris dan kolom matriks-matriks operasi
r1 = int(input("Masukkan jumlah baris matriks pertama : "))
c1 = int(input("Masukkan jumlah kolom matriks pertama : "))
print("Silakan masukkan entri-entri pada matriks pertama")
entriMatriks(m1,r1,c1)
print("Matriks pertama Anda adalah : ")
printMatriks(m1,r1,c1)
print("="*69)
r2 = int(input("Masukkan jumlah baris matriks kedua   : ")) #  Proses input ukuran baris dan kolom matriks-matriks operasi
c2 = int(input("Masukkan jumlah kolom matriks kedua   : "))
while (c1 != r2) and (opt == 1): # Algoritma untuk penyesuaian ukuran baris dan kolom matriks pertama dan matriks kedua
        print("="*30,"WARNING : UKURAN Baris Matriks Kedua harus sama dengan ukuran kolom matriks pertama, yaitu :", c1,"="*30 )
        r2 = int(input("Silakan masukkan ulang jumlah baris matriks kedua   : "))
while (c1 != c2) and (opt == 2 or opt == 3):
        print("="*30,"WARNING : UKURAN Matriks anda harus", r1, "*", c1,"="*30 )
        c2 = int(input("Silakan masukkan ulang jumlah kolom matriks kedua   : "))
while (r1 != r2) and (opt == 2 or opt == 3):
        print("="*30,"WARNING : UKURAN Matriks anda harus", r1, "*", c1,"="*30 )
        r2 = int(input("Silakan masukkan ulang jumlah baris matriks kedua   : "))
print("Silakan masukkan entri-entri pada matriks kedua")
entriMatriks(m2,r2,c2)
print("Matriks kedua Anda adalah : ")
printMatriks(m2,r2,c2)
def multiplyMatrix(r1,c1,m1,c2,r2, m2,m3) : # Fungsi Perkalian
    m3 = [[0 for i in range(r1)] for j in range(r2)]
    for i in range(len(m1)):
        for j in range(len(m2[0])):
            for r in range(len(m2)):
                m3[i][j] += m1[i][r] * m2[r][j]
    print("adalah :")
    for y in m3:
        print(y)
def addMatrix(r1, c1, m1,r2, c2, m2,m3): # Fungsi Penjumlahan
    for i in range(r1):
        d=[]
        for j in range(c2):
            d.append(0)
        m3.append(d)
    for i in range(len(m1)):
        for j in range(len(m2[0])):
                m3[i][j] = m1[i][j] + m2[i][j]
    print("adalah :")
    for y in m3:
        print(y)
def substractMatrix(r1, c1, m1,r2, c2, m2,m3): # Fungsi Pengurangan
    for i in range(r1):
        d=[]
        for j in range(c2):
            d.append(0)
        m3.append(d)
    for i in range(len(m1)):
        for j in range(len(m2[0])):
                m3[i][j] = m1[i][j] - m2[i][j]
    print("adalah :")
    for y in m3:
        print(y)
print("="*69)
if opt == 1: # Algoritma seleksi untuk penyesuaian operasi dari user input
    print("Hasil dari operasi perkalian antara matriks pertama : ")
    printMatriks(m1,r1,c1)
    print("dengan matriks kedua :")
    printMatriks(m2,r2,c2)
    multiplyMatrix(r1, c1, m1,r2, c2, m2,m3)
elif opt == 2:
    print("Hasil dari operasi penjumlahan antara matriks pertama : ")
    printMatriks(m1,r1,c1)
    print("dengan matriks kedua :")
    printMatriks(m2,r2,c2)
    addMatrix(r1, c1, m1,r2, c2, m2,m3)
elif opt == 3:
    print("Hasil dari operasi pengurangan antara matriks pertama : ")
    printMatriks(m1,r1,c1)
    print("dengan matriks kedua :")
    printMatriks(m2,r2,c2)
    substractMatrix(r1, c1, m1,r2, c2, m2,m3)
print("","="*69,"\n ========================= PROGRAM SELESAI ===========================\n","="*69)