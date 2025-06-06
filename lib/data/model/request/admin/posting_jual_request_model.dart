import 'dart:convert';

class PostingJualRequestModel {
  final int burungId;
  final String burungType;
  final int harga;
  final String deskripsi;

   PostingJualRequestModel({
    required this.burungId,
    required this.burungType,
    required this.harga,
    required this.deskripsi,
  });