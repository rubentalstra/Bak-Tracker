import 'package:equatable/equatable.dart';

class AssociationModel extends Equatable {
  final String id;
  final String name;
  final DateTime createdAt;
  final String? websiteUrl;

  const AssociationModel({
    required this.id,
    required this.name,
    required this.createdAt,
    this.websiteUrl,
  });

  // Factory method to create an AssociationModel from a map (e.g., from Supabase)
  factory AssociationModel.fromMap(Map<String, dynamic> map) {
    return AssociationModel(
      id: map['id'],
      name: map['name'],
      createdAt: DateTime.parse(map['created_at']),
      websiteUrl: map['website_url'],
    );
  }

  // Convert AssociationModel to a map (e.g., for inserting into Supabase)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'created_at': createdAt.toIso8601String(),
      'website_url': websiteUrl,
    };
  }

  @override
  List<Object?> get props => [id, name, createdAt, websiteUrl];
}
