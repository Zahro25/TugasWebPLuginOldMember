function createObject(nama, kelas, alamat) {
  let mahasiswa = {};
  mahasiswa.nama = nama ;
  mahasiswa.kelas = kelas;
  mahasiswa.alamat = alamat;
  return mahasiswa;
}
let mhs1 = createObject("fatimatuzzahro", "3B", "kalisoka");
mhs1.hobi = "makan"
console.log(mhs1);