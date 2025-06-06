mport 'dart:convert';

class AnakRequestModel {
  final String noRing;
  final DateTime tanggalLahir;
  final String jenisKelamin;
  final String jenisKenari;
  final String keterangan;
  final String? gambarBurung; // nullable
  final int ayahId;
  final int ibuId;

    AnakRequestModel({
    required this.noRing,
    required this.tanggalLahir,
    required this.jenisKelamin,
    required this.jenisKenari,
    required this.keterangan,
    this.gambarBurung, // nullable constructor param
    required this.ayahId,
    required this.ibuId,
  });