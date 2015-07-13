// Copyright (C) 2005-2010 Code Synthesis Tools CC
//
// This program was generated by CodeSynthesis XSD, an XML Schema to
// C++ data binding compiler.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License version 2 as
// published by the Free Software Foundation.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
//
// In addition, as a special exception, Code Synthesis Tools CC gives
// permission to link this program with the Xerces-C++ library (or with
// modified versions of Xerces-C++ that use the same license as Xerces-C++),
// and distribute linked combinations including the two. You must obey
// the GNU General Public License version 2 in all respects for all of
// the code used other than Xerces-C++. If you modify this copy of the
// program, you may extend this exception to your version of the program,
// but you are not obligated to do so. If you do not wish to do so, delete
// this exception statement from your version.
//
// Furthermore, Code Synthesis Tools CC makes a special exception for
// the Free/Libre and Open Source Software (FLOSS) which is described
// in the accompanying FLOSSE file.
//

#ifndef QIFRESULTS_HXX
#define QIFRESULTS_HXX

// Begin prologue.
//
//
// End prologue.

#include <xsd/cxx/config.hxx>

#if (XSD_INT_VERSION != 3030000L)
#error XSD runtime version mismatch
#endif

#include <xsd/cxx/pre.hxx>

#ifndef XSD_USE_CHAR
#define XSD_USE_CHAR
#endif

#ifndef XSD_CXX_TREE_USE_CHAR
#define XSD_CXX_TREE_USE_CHAR
#endif

#include <xsd/cxx/xml/char-utf8.hxx>

#include <xsd/cxx/tree/exceptions.hxx>
#include <xsd/cxx/tree/elements.hxx>
#include <xsd/cxx/tree/types.hxx>

#include <xsd/cxx/xml/error-handler.hxx>

#include <xsd/cxx/xml/dom/auto-ptr.hxx>

#include <xsd/cxx/tree/parsing.hxx>
#include <xsd/cxx/tree/parsing/byte.hxx>
#include <xsd/cxx/tree/parsing/unsigned-byte.hxx>
#include <xsd/cxx/tree/parsing/short.hxx>
#include <xsd/cxx/tree/parsing/unsigned-short.hxx>
#include <xsd/cxx/tree/parsing/int.hxx>
#include <xsd/cxx/tree/parsing/unsigned-int.hxx>
#include <xsd/cxx/tree/parsing/long.hxx>
#include <xsd/cxx/tree/parsing/unsigned-long.hxx>
#include <xsd/cxx/tree/parsing/boolean.hxx>
#include <xsd/cxx/tree/parsing/float.hxx>
#include <xsd/cxx/tree/parsing/double.hxx>
#include <xsd/cxx/tree/parsing/decimal.hxx>

namespace xml_schema
{
  // anyType and anySimpleType.
  //
  typedef ::xsd::cxx::tree::type type;
  typedef ::xsd::cxx::tree::simple_type< type > simple_type;
  typedef ::xsd::cxx::tree::type container;

  // 8-bit
  //
  typedef signed char byte;
  typedef unsigned char unsigned_byte;

  // 16-bit
  //
  typedef short short_;
  typedef unsigned short unsigned_short;

  // 32-bit
  //
  typedef int int_;
  typedef unsigned int unsigned_int;

  // 64-bit
  //
  typedef long long long_;
  typedef unsigned long long unsigned_long;

  // Supposed to be arbitrary-length integral types.
  //
  typedef long long integer;
  typedef long long non_positive_integer;
  typedef unsigned long long non_negative_integer;
  typedef unsigned long long positive_integer;
  typedef long long negative_integer;

  // Boolean.
  //
  typedef bool boolean;

  // Floating-point types.
  //
  typedef float float_;
  typedef double double_;
  typedef double decimal;

  // String types.
  //
  typedef ::xsd::cxx::tree::string< char, simple_type > string;
  typedef ::xsd::cxx::tree::normalized_string< char, string > normalized_string;
  typedef ::xsd::cxx::tree::token< char, normalized_string > token;
  typedef ::xsd::cxx::tree::name< char, token > name;
  typedef ::xsd::cxx::tree::nmtoken< char, token > nmtoken;
  typedef ::xsd::cxx::tree::nmtokens< char, simple_type, nmtoken > nmtokens;
  typedef ::xsd::cxx::tree::ncname< char, name > ncname;
  typedef ::xsd::cxx::tree::language< char, token > language;

  // ID/IDREF.
  //
  typedef ::xsd::cxx::tree::id< char, ncname > id;
  typedef ::xsd::cxx::tree::idref< char, ncname, type > idref;
  typedef ::xsd::cxx::tree::idrefs< char, simple_type, idref > idrefs;

  // URI.
  //
  typedef ::xsd::cxx::tree::uri< char, simple_type > uri;

  // Qualified name.
  //
  typedef ::xsd::cxx::tree::qname< char, simple_type, uri, ncname > qname;

  // Binary.
  //
  typedef ::xsd::cxx::tree::buffer< char > buffer;
  typedef ::xsd::cxx::tree::base64_binary< char, simple_type > base64_binary;
  typedef ::xsd::cxx::tree::hex_binary< char, simple_type > hex_binary;

  // Date/time.
  //
  typedef ::xsd::cxx::tree::time_zone time_zone;
  typedef ::xsd::cxx::tree::date< char, simple_type > date;
  typedef ::xsd::cxx::tree::date_time< char, simple_type > date_time;
  typedef ::xsd::cxx::tree::duration< char, simple_type > duration;
  typedef ::xsd::cxx::tree::gday< char, simple_type > gday;
  typedef ::xsd::cxx::tree::gmonth< char, simple_type > gmonth;
  typedef ::xsd::cxx::tree::gmonth_day< char, simple_type > gmonth_day;
  typedef ::xsd::cxx::tree::gyear< char, simple_type > gyear;
  typedef ::xsd::cxx::tree::gyear_month< char, simple_type > gyear_month;
  typedef ::xsd::cxx::tree::time< char, simple_type > time;

  // Entity.
  //
  typedef ::xsd::cxx::tree::entity< char, ncname > entity;
  typedef ::xsd::cxx::tree::entities< char, simple_type, entity > entities;

  // Flags and properties.
  //
  typedef ::xsd::cxx::tree::flags flags;
  typedef ::xsd::cxx::tree::properties< char > properties;

  // Parsing/serialization diagnostics.
  //
  typedef ::xsd::cxx::tree::severity severity;
  typedef ::xsd::cxx::tree::error< char > error;
  typedef ::xsd::cxx::tree::diagnostics< char > diagnostics;

  // Exceptions.
  //
  typedef ::xsd::cxx::tree::exception< char > exception;
  typedef ::xsd::cxx::tree::bounds< char > bounds;
  typedef ::xsd::cxx::tree::duplicate_id< char > duplicate_id;
  typedef ::xsd::cxx::tree::parsing< char > parsing;
  typedef ::xsd::cxx::tree::expected_element< char > expected_element;
  typedef ::xsd::cxx::tree::unexpected_element< char > unexpected_element;
  typedef ::xsd::cxx::tree::expected_attribute< char > expected_attribute;
  typedef ::xsd::cxx::tree::unexpected_enumerator< char > unexpected_enumerator;
  typedef ::xsd::cxx::tree::expected_text_content< char > expected_text_content;
  typedef ::xsd::cxx::tree::no_prefix_mapping< char > no_prefix_mapping;

  // Error handler callback interface.
  //
  typedef ::xsd::cxx::xml::error_handler< char > error_handler;

  // DOM interaction.
  //
  namespace dom
  {
    // Automatic pointer for DOMDocument.
    //
    using ::xsd::cxx::xml::dom::auto_ptr;

#ifndef XSD_CXX_TREE_TREE_NODE_KEY__XML_SCHEMA
#define XSD_CXX_TREE_TREE_NODE_KEY__XML_SCHEMA
    // DOM user data key for back pointers to tree nodes.
    //
    const XMLCh* const tree_node_key = ::xsd::cxx::tree::user_data_keys::node;
#endif
  }
}

// Forward declarations.
//
namespace xsd
{
  namespace qif2
  {
    class MeasurementResultsType;
    class MeasurementsResultsType;
    class ActualComponentSetType;
    class ActualComponentType;
  }
}


#include <memory>    // std::auto_ptr
#include <limits>    // std::numeric_limits
#include <algorithm> // std::binary_search

#include <xsd/cxx/xml/char-utf8.hxx>

#include <xsd/cxx/tree/exceptions.hxx>
#include <xsd/cxx/tree/elements.hxx>
#include <xsd/cxx/tree/containers.hxx>
#include <xsd/cxx/tree/list.hxx>

#include <xsd/cxx/xml/dom/parsing-header.hxx>

#include "../QIFLibrary/Traceability.hxx"

#include "../QIFLibrary/Characteristics.hxx"

#include "../QIFLibrary/Features.hxx"

namespace xsd
{
  namespace qif2
  {
    class MeasurementResultsType: public ::xml_schema::type
    {
      public:
      // InspectionTraceability
      // 
      typedef ::xsd::qif2::InspectionTraceabilityType InspectionTraceability_type;
      typedef ::xsd::cxx::tree::optional< InspectionTraceability_type > InspectionTraceability_optional;
      typedef ::xsd::cxx::tree::traits< InspectionTraceability_type, char > InspectionTraceability_traits;

      const InspectionTraceability_optional&
      InspectionTraceability () const;

      InspectionTraceability_optional&
      InspectionTraceability ();

      void
      InspectionTraceability (const InspectionTraceability_type& x);

      void
      InspectionTraceability (const InspectionTraceability_optional& x);

      void
      InspectionTraceability (::std::auto_ptr< InspectionTraceability_type > p);

      // ThisResultsInstanceQPId
      // 
      typedef ::xsd::qif2::QPIdType ThisResultsInstanceQPId_type;
      typedef ::xsd::cxx::tree::optional< ThisResultsInstanceQPId_type > ThisResultsInstanceQPId_optional;
      typedef ::xsd::cxx::tree::traits< ThisResultsInstanceQPId_type, char > ThisResultsInstanceQPId_traits;

      const ThisResultsInstanceQPId_optional&
      ThisResultsInstanceQPId () const;

      ThisResultsInstanceQPId_optional&
      ThisResultsInstanceQPId ();

      void
      ThisResultsInstanceQPId (const ThisResultsInstanceQPId_type& x);

      void
      ThisResultsInstanceQPId (const ThisResultsInstanceQPId_optional& x);

      void
      ThisResultsInstanceQPId (::std::auto_ptr< ThisResultsInstanceQPId_type > p);

      // ExternalFileReference
      // 
      typedef ::xsd::qif2::ExternalFileReferenceType ExternalFileReference_type;
      typedef ::xsd::cxx::tree::sequence< ExternalFileReference_type > ExternalFileReference_sequence;
      typedef ExternalFileReference_sequence::iterator ExternalFileReference_iterator;
      typedef ExternalFileReference_sequence::const_iterator ExternalFileReference_const_iterator;
      typedef ::xsd::cxx::tree::traits< ExternalFileReference_type, char > ExternalFileReference_traits;

      const ExternalFileReference_sequence&
      ExternalFileReference () const;

      ExternalFileReference_sequence&
      ExternalFileReference ();

      void
      ExternalFileReference (const ExternalFileReference_sequence& s);

      // MeasuredFeatures
      // 
      typedef ::xsd::qif2::MeasuredFeaturesType MeasuredFeatures_type;
      typedef ::xsd::cxx::tree::optional< MeasuredFeatures_type > MeasuredFeatures_optional;
      typedef ::xsd::cxx::tree::traits< MeasuredFeatures_type, char > MeasuredFeatures_traits;

      const MeasuredFeatures_optional&
      MeasuredFeatures () const;

      MeasuredFeatures_optional&
      MeasuredFeatures ();

      void
      MeasuredFeatures (const MeasuredFeatures_type& x);

      void
      MeasuredFeatures (const MeasuredFeatures_optional& x);

      void
      MeasuredFeatures (::std::auto_ptr< MeasuredFeatures_type > p);

      // MeasuredCharacteristics
      // 
      typedef ::xsd::qif2::MeasuredCharacteristicsType MeasuredCharacteristics_type;
      typedef ::xsd::cxx::tree::optional< MeasuredCharacteristics_type > MeasuredCharacteristics_optional;
      typedef ::xsd::cxx::tree::traits< MeasuredCharacteristics_type, char > MeasuredCharacteristics_traits;

      const MeasuredCharacteristics_optional&
      MeasuredCharacteristics () const;

      MeasuredCharacteristics_optional&
      MeasuredCharacteristics ();

      void
      MeasuredCharacteristics (const MeasuredCharacteristics_type& x);

      void
      MeasuredCharacteristics (const MeasuredCharacteristics_optional& x);

      void
      MeasuredCharacteristics (::std::auto_ptr< MeasuredCharacteristics_type > p);

      // CoordinateSystemActualTransforms
      // 
      typedef ::xsd::qif2::CoordinateSystemActualTransformsType CoordinateSystemActualTransforms_type;
      typedef ::xsd::cxx::tree::optional< CoordinateSystemActualTransforms_type > CoordinateSystemActualTransforms_optional;
      typedef ::xsd::cxx::tree::traits< CoordinateSystemActualTransforms_type, char > CoordinateSystemActualTransforms_traits;

      const CoordinateSystemActualTransforms_optional&
      CoordinateSystemActualTransforms () const;

      CoordinateSystemActualTransforms_optional&
      CoordinateSystemActualTransforms ();

      void
      CoordinateSystemActualTransforms (const CoordinateSystemActualTransforms_type& x);

      void
      CoordinateSystemActualTransforms (const CoordinateSystemActualTransforms_optional& x);

      void
      CoordinateSystemActualTransforms (::std::auto_ptr< CoordinateSystemActualTransforms_type > p);

      // InspectionStatus
      // 
      typedef ::xsd::qif2::InspectionStatusType InspectionStatus_type;
      typedef ::xsd::cxx::tree::traits< InspectionStatus_type, char > InspectionStatus_traits;

      const InspectionStatus_type&
      InspectionStatus () const;

      InspectionStatus_type&
      InspectionStatus ();

      void
      InspectionStatus (const InspectionStatus_type& x);

      void
      InspectionStatus (::std::auto_ptr< InspectionStatus_type > p);

      // ActualComponentIds
      // 
      typedef ::xsd::qif2::ArrayReferenceType ActualComponentIds_type;
      typedef ::xsd::cxx::tree::optional< ActualComponentIds_type > ActualComponentIds_optional;
      typedef ::xsd::cxx::tree::traits< ActualComponentIds_type, char > ActualComponentIds_traits;

      const ActualComponentIds_optional&
      ActualComponentIds () const;

      ActualComponentIds_optional&
      ActualComponentIds ();

      void
      ActualComponentIds (const ActualComponentIds_type& x);

      void
      ActualComponentIds (const ActualComponentIds_optional& x);

      void
      ActualComponentIds (::std::auto_ptr< ActualComponentIds_type > p);

      // id
      // 
      typedef ::xsd::qif2::QIFIdType id_type;
      typedef ::xsd::cxx::tree::traits< id_type, char > id_traits;

      const id_type&
      id () const;

      id_type&
      id ();

      void
      id (const id_type& x);

      void
      id (::std::auto_ptr< id_type > p);

      // Constructors.
      //
      MeasurementResultsType (const InspectionStatus_type&,
                              const id_type&);

      MeasurementResultsType (::std::auto_ptr< InspectionStatus_type >&,
                              const id_type&);

      MeasurementResultsType (const ::xercesc::DOMElement& e,
                              ::xml_schema::flags f = 0,
                              ::xml_schema::container* c = 0);

      MeasurementResultsType (const MeasurementResultsType& x,
                              ::xml_schema::flags f = 0,
                              ::xml_schema::container* c = 0);

      virtual MeasurementResultsType*
      _clone (::xml_schema::flags f = 0,
              ::xml_schema::container* c = 0) const;

      virtual 
      ~MeasurementResultsType ();

      // Implementation.
      //
      protected:
      void
      parse (::xsd::cxx::xml::dom::parser< char >&,
             ::xml_schema::flags);

      protected:
      InspectionTraceability_optional InspectionTraceability_;
      ThisResultsInstanceQPId_optional ThisResultsInstanceQPId_;
      ExternalFileReference_sequence ExternalFileReference_;
      MeasuredFeatures_optional MeasuredFeatures_;
      MeasuredCharacteristics_optional MeasuredCharacteristics_;
      CoordinateSystemActualTransforms_optional CoordinateSystemActualTransforms_;
      ::xsd::cxx::tree::one< InspectionStatus_type > InspectionStatus_;
      ActualComponentIds_optional ActualComponentIds_;
      ::xsd::cxx::tree::one< id_type > id_;
    };

    class MeasurementsResultsType: public ::xml_schema::type
    {
      public:
      // Version
      // 
      typedef ::xsd::qif2::VersionType Version_type;
      typedef ::xsd::cxx::tree::optional< Version_type > Version_optional;
      typedef ::xsd::cxx::tree::traits< Version_type, char > Version_traits;

      const Version_optional&
      Version () const;

      Version_optional&
      Version ();

      void
      Version (const Version_type& x);

      void
      Version (const Version_optional& x);

      void
      Version (::std::auto_ptr< Version_type > p);

      // MeasurementResults
      // 
      typedef ::xsd::qif2::MeasurementResultsType MeasurementResults_type;
      typedef ::xsd::cxx::tree::sequence< MeasurementResults_type > MeasurementResults_sequence;
      typedef MeasurementResults_sequence::iterator MeasurementResults_iterator;
      typedef MeasurementResults_sequence::const_iterator MeasurementResults_const_iterator;
      typedef ::xsd::cxx::tree::traits< MeasurementResults_type, char > MeasurementResults_traits;

      const MeasurementResults_sequence&
      MeasurementResults () const;

      MeasurementResults_sequence&
      MeasurementResults ();

      void
      MeasurementResults (const MeasurementResults_sequence& s);

      // ActualComponentSet
      // 
      typedef ::xsd::qif2::ActualComponentSetType ActualComponentSet_type;
      typedef ::xsd::cxx::tree::sequence< ActualComponentSet_type > ActualComponentSet_sequence;
      typedef ActualComponentSet_sequence::iterator ActualComponentSet_iterator;
      typedef ActualComponentSet_sequence::const_iterator ActualComponentSet_const_iterator;
      typedef ::xsd::cxx::tree::traits< ActualComponentSet_type, char > ActualComponentSet_traits;

      const ActualComponentSet_sequence&
      ActualComponentSet () const;

      ActualComponentSet_sequence&
      ActualComponentSet ();

      void
      ActualComponentSet (const ActualComponentSet_sequence& s);

      // InspectionTraceability
      // 
      typedef ::xsd::qif2::InspectionTraceabilityType InspectionTraceability_type;
      typedef ::xsd::cxx::tree::optional< InspectionTraceability_type > InspectionTraceability_optional;
      typedef ::xsd::cxx::tree::traits< InspectionTraceability_type, char > InspectionTraceability_traits;

      const InspectionTraceability_optional&
      InspectionTraceability () const;

      InspectionTraceability_optional&
      InspectionTraceability ();

      void
      InspectionTraceability (const InspectionTraceability_type& x);

      void
      InspectionTraceability (const InspectionTraceability_optional& x);

      void
      InspectionTraceability (::std::auto_ptr< InspectionTraceability_type > p);

      // Constructors.
      //
      MeasurementsResultsType ();

      MeasurementsResultsType (const ::xercesc::DOMElement& e,
                               ::xml_schema::flags f = 0,
                               ::xml_schema::container* c = 0);

      MeasurementsResultsType (const MeasurementsResultsType& x,
                               ::xml_schema::flags f = 0,
                               ::xml_schema::container* c = 0);

      virtual MeasurementsResultsType*
      _clone (::xml_schema::flags f = 0,
              ::xml_schema::container* c = 0) const;

      virtual 
      ~MeasurementsResultsType ();

      // Implementation.
      //
      protected:
      void
      parse (::xsd::cxx::xml::dom::parser< char >&,
             ::xml_schema::flags);

      protected:
      Version_optional Version_;
      MeasurementResults_sequence MeasurementResults_;
      ActualComponentSet_sequence ActualComponentSet_;
      InspectionTraceability_optional InspectionTraceability_;
    };

    class ActualComponentSetType: public ::xml_schema::type
    {
      public:
      // ActualComponent
      // 
      typedef ::xsd::qif2::ActualComponentType ActualComponent_type;
      typedef ::xsd::cxx::tree::sequence< ActualComponent_type > ActualComponent_sequence;
      typedef ActualComponent_sequence::iterator ActualComponent_iterator;
      typedef ActualComponent_sequence::const_iterator ActualComponent_const_iterator;
      typedef ::xsd::cxx::tree::traits< ActualComponent_type, char > ActualComponent_traits;

      const ActualComponent_sequence&
      ActualComponent () const;

      ActualComponent_sequence&
      ActualComponent ();

      void
      ActualComponent (const ActualComponent_sequence& s);

      // N
      // 
      typedef ::xsd::qif2::NaturalType N_type;
      typedef ::xsd::cxx::tree::traits< N_type, char > N_traits;

      const N_type&
      N () const;

      N_type&
      N ();

      void
      N (const N_type& x);

      void
      N (::std::auto_ptr< N_type > p);

      // Constructors.
      //
      ActualComponentSetType (const N_type&);

      ActualComponentSetType (const ::xercesc::DOMElement& e,
                              ::xml_schema::flags f = 0,
                              ::xml_schema::container* c = 0);

      ActualComponentSetType (const ActualComponentSetType& x,
                              ::xml_schema::flags f = 0,
                              ::xml_schema::container* c = 0);

      virtual ActualComponentSetType*
      _clone (::xml_schema::flags f = 0,
              ::xml_schema::container* c = 0) const;

      virtual 
      ~ActualComponentSetType ();

      // Implementation.
      //
      protected:
      void
      parse (::xsd::cxx::xml::dom::parser< char >&,
             ::xml_schema::flags);

      protected:
      ActualComponent_sequence ActualComponent_;
      ::xsd::cxx::tree::one< N_type > N_;
    };

    class ActualComponentType: public ::xml_schema::type
    {
      public:
      // Attributes
      // 
      typedef ::xsd::qif2::AttributesType Attributes_type;
      typedef ::xsd::cxx::tree::optional< Attributes_type > Attributes_optional;
      typedef ::xsd::cxx::tree::traits< Attributes_type, char > Attributes_traits;

      const Attributes_optional&
      Attributes () const;

      Attributes_optional&
      Attributes ();

      void
      Attributes (const Attributes_type& x);

      void
      Attributes (const Attributes_optional& x);

      void
      Attributes (::std::auto_ptr< Attributes_type > p);

      // SerialNumber
      // 
      typedef ::xml_schema::string SerialNumber_type;
      typedef ::xsd::cxx::tree::optional< SerialNumber_type > SerialNumber_optional;
      typedef ::xsd::cxx::tree::traits< SerialNumber_type, char > SerialNumber_traits;

      const SerialNumber_optional&
      SerialNumber () const;

      SerialNumber_optional&
      SerialNumber ();

      void
      SerialNumber (const SerialNumber_type& x);

      void
      SerialNumber (const SerialNumber_optional& x);

      void
      SerialNumber (::std::auto_ptr< SerialNumber_type > p);

      // AdditionalChanges
      // 
      typedef ::xml_schema::string AdditionalChanges_type;
      typedef ::xsd::cxx::tree::optional< AdditionalChanges_type > AdditionalChanges_optional;
      typedef ::xsd::cxx::tree::traits< AdditionalChanges_type, char > AdditionalChanges_traits;

      const AdditionalChanges_optional&
      AdditionalChanges () const;

      AdditionalChanges_optional&
      AdditionalChanges ();

      void
      AdditionalChanges (const AdditionalChanges_type& x);

      void
      AdditionalChanges (const AdditionalChanges_optional& x);

      void
      AdditionalChanges (::std::auto_ptr< AdditionalChanges_type > p);

      // Status
      // 
      typedef ::xsd::qif2::InspectionStatusType Status_type;
      typedef ::xsd::cxx::tree::traits< Status_type, char > Status_traits;

      const Status_type&
      Status () const;

      Status_type&
      Status ();

      void
      Status (const Status_type& x);

      void
      Status (::std::auto_ptr< Status_type > p);

      // Traceability
      // 
      typedef ::xsd::qif2::ActualProductTraceabilityType Traceability_type;
      typedef ::xsd::cxx::tree::optional< Traceability_type > Traceability_optional;
      typedef ::xsd::cxx::tree::traits< Traceability_type, char > Traceability_traits;

      const Traceability_optional&
      Traceability () const;

      Traceability_optional&
      Traceability ();

      void
      Traceability (const Traceability_type& x);

      void
      Traceability (const Traceability_optional& x);

      void
      Traceability (::std::auto_ptr< Traceability_type > p);

      // AsmPathId
      // 
      typedef ::xsd::qif2::QIFReferenceType AsmPathId_type;
      typedef ::xsd::cxx::tree::optional< AsmPathId_type > AsmPathId_optional;
      typedef ::xsd::cxx::tree::traits< AsmPathId_type, char > AsmPathId_traits;

      const AsmPathId_optional&
      AsmPathId () const;

      AsmPathId_optional&
      AsmPathId ();

      void
      AsmPathId (const AsmPathId_type& x);

      void
      AsmPathId (const AsmPathId_optional& x);

      void
      AsmPathId (::std::auto_ptr< AsmPathId_type > p);

      // id
      // 
      typedef ::xsd::qif2::QIFIdType id_type;
      typedef ::xsd::cxx::tree::traits< id_type, char > id_traits;

      const id_type&
      id () const;

      id_type&
      id ();

      void
      id (const id_type& x);

      void
      id (::std::auto_ptr< id_type > p);

      // Constructors.
      //
      ActualComponentType (const Status_type&,
                           const id_type&);

      ActualComponentType (::std::auto_ptr< Status_type >&,
                           const id_type&);

      ActualComponentType (const ::xercesc::DOMElement& e,
                           ::xml_schema::flags f = 0,
                           ::xml_schema::container* c = 0);

      ActualComponentType (const ActualComponentType& x,
                           ::xml_schema::flags f = 0,
                           ::xml_schema::container* c = 0);

      virtual ActualComponentType*
      _clone (::xml_schema::flags f = 0,
              ::xml_schema::container* c = 0) const;

      virtual 
      ~ActualComponentType ();

      // Implementation.
      //
      protected:
      void
      parse (::xsd::cxx::xml::dom::parser< char >&,
             ::xml_schema::flags);

      protected:
      Attributes_optional Attributes_;
      SerialNumber_optional SerialNumber_;
      AdditionalChanges_optional AdditionalChanges_;
      ::xsd::cxx::tree::one< Status_type > Status_;
      Traceability_optional Traceability_;
      AsmPathId_optional AsmPathId_;
      ::xsd::cxx::tree::one< id_type > id_;
    };
  }
}

#include <iosfwd>

#include <xercesc/sax/InputSource.hpp>
#include <xercesc/dom/DOMDocument.hpp>
#include <xercesc/dom/DOMErrorHandler.hpp>

namespace xsd
{
  namespace qif2
  {
    // Parse a URI or a local file.
    //

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (const ::std::string& uri,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (const ::std::string& uri,
                         ::xml_schema::error_handler& eh,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (const ::std::string& uri,
                         ::xercesc::DOMErrorHandler& eh,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse std::istream.
    //

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::std::istream& is,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::std::istream& is,
                         ::xml_schema::error_handler& eh,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::std::istream& is,
                         ::xercesc::DOMErrorHandler& eh,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::std::istream& is,
                         const ::std::string& id,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::std::istream& is,
                         const ::std::string& id,
                         ::xml_schema::error_handler& eh,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::std::istream& is,
                         const ::std::string& id,
                         ::xercesc::DOMErrorHandler& eh,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse xercesc::InputSource.
    //

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::xercesc::InputSource& is,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::xercesc::InputSource& is,
                         ::xml_schema::error_handler& eh,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::xercesc::InputSource& is,
                         ::xercesc::DOMErrorHandler& eh,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse xercesc::DOMDocument.
    //

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (const ::xercesc::DOMDocument& d,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::MeasurementsResultsType >
    MeasurementsResults (::xml_schema::dom::auto_ptr< ::xercesc::DOMDocument >& d,
                         ::xml_schema::flags f = 0,
                         const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse a URI or a local file.
    //

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (const ::std::string& uri,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (const ::std::string& uri,
                        ::xml_schema::error_handler& eh,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (const ::std::string& uri,
                        ::xercesc::DOMErrorHandler& eh,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse std::istream.
    //

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::std::istream& is,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::std::istream& is,
                        ::xml_schema::error_handler& eh,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::std::istream& is,
                        ::xercesc::DOMErrorHandler& eh,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::std::istream& is,
                        const ::std::string& id,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::std::istream& is,
                        const ::std::string& id,
                        ::xml_schema::error_handler& eh,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::std::istream& is,
                        const ::std::string& id,
                        ::xercesc::DOMErrorHandler& eh,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse xercesc::InputSource.
    //

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::xercesc::InputSource& is,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::xercesc::InputSource& is,
                        ::xml_schema::error_handler& eh,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::xercesc::InputSource& is,
                        ::xercesc::DOMErrorHandler& eh,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse xercesc::DOMDocument.
    //

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (const ::xercesc::DOMDocument& d,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentSetType >
    ActualComponentSet (::xml_schema::dom::auto_ptr< ::xercesc::DOMDocument >& d,
                        ::xml_schema::flags f = 0,
                        const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse a URI or a local file.
    //

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (const ::std::string& uri,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (const ::std::string& uri,
                     ::xml_schema::error_handler& eh,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (const ::std::string& uri,
                     ::xercesc::DOMErrorHandler& eh,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse std::istream.
    //

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::std::istream& is,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::std::istream& is,
                     ::xml_schema::error_handler& eh,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::std::istream& is,
                     ::xercesc::DOMErrorHandler& eh,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::std::istream& is,
                     const ::std::string& id,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::std::istream& is,
                     const ::std::string& id,
                     ::xml_schema::error_handler& eh,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::std::istream& is,
                     const ::std::string& id,
                     ::xercesc::DOMErrorHandler& eh,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse xercesc::InputSource.
    //

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::xercesc::InputSource& is,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::xercesc::InputSource& is,
                     ::xml_schema::error_handler& eh,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::xercesc::InputSource& is,
                     ::xercesc::DOMErrorHandler& eh,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    // Parse xercesc::DOMDocument.
    //

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (const ::xercesc::DOMDocument& d,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());

    ::std::auto_ptr< ::xsd::qif2::ActualComponentType >
    ActualComponent (::xml_schema::dom::auto_ptr< ::xercesc::DOMDocument >& d,
                     ::xml_schema::flags f = 0,
                     const ::xml_schema::properties& p = ::xml_schema::properties ());
  }
}

#include <xsd/cxx/post.hxx>

// Begin epilogue.
//
//
// End epilogue.

#endif // QIFRESULTS_HXX
