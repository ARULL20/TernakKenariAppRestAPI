import 'dart:convert';

class IndukRequestModel {
  final String noRing;
  final DateTime tanggalLahir;
  final String jenisKelamin;
  final String jenisKenari;
  final String keterangan;
  final String? gambarBurung;

   IndukRequestModel({
    required this.noRing,
    required this.tanggalLahir,
    required this.jenisKelamin,
    required this.jenisKenari,
    required this.keterangan,
    this.gambarBurung, // nullable constructor param
  });

  IndukRequestModel copyWith({
    String? noRing,
    DateTime? tanggalLahir,
    String? jenisKelamin,
    String? jenisKenari,
    String? keterangan,
    String? gambarBurung,