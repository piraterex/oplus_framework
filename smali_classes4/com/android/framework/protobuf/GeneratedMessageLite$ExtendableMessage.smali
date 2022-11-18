.class public abstract Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected blacklist extensions:Lcom/android/framework/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 493
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    .line 500
    invoke-static {}, Lcom/android/framework/protobuf/FieldSet;->emptySet()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    return-void
.end method

.method private blacklist eagerlyMergeMessageSetExtension(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/android/framework/protobuf/ExtensionRegistryLite;I)V
    .locals 7
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .param p4, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p2, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    move v5, p4

    .line 755
    .local v5, "fieldNumber":I
    const/4 v0, 0x2

    invoke-static {p4, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v6

    .line 756
    .local v6, "tag":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    .line 757
    return-void
.end method

.method private blacklist mergeMessageSetExtensionFromBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 6
    .param p1, "rawBytes"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p3, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    const/4 v0, 0x0

    .line 765
    .local v0, "subBuilder":Lcom/android/framework/protobuf/MessageLite$Builder;
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v2, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    .line 766
    .local v1, "existingValue":Lcom/android/framework/protobuf/MessageLite;
    if-eqz v1, :cond_0

    .line 767
    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 769
    :cond_0
    if-nez v0, :cond_1

    .line 770
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/framework/protobuf/MessageLite;->newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 772
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 773
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    .line 775
    .local v2, "value":Lcom/android/framework/protobuf/MessageLite;
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v3

    iget-object v4, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 776
    invoke-virtual {p3, v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 777
    return-void
.end method

.method private blacklist mergeMessageSetExtensionFromCodedStream(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .param p2, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    const/4 v0, 0x0

    .line 698
    .local v0, "typeId":I
    const/4 v1, 0x0

    .line 699
    .local v1, "rawBytes":Lcom/android/framework/protobuf/ByteString;
    const/4 v2, 0x0

    .line 704
    .local v2, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :goto_0
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 705
    .local v3, "tag":I
    if-nez v3, :cond_0

    .line 706
    goto :goto_1

    .line 709
    :cond_0
    sget v4, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v3, v4, :cond_1

    .line 710
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 711
    if-eqz v0, :cond_6

    .line 712
    invoke-virtual {p3, p1, v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v2

    goto :goto_3

    .line 715
    :cond_1
    sget v4, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v3, v4, :cond_3

    .line 716
    if-eqz v0, :cond_2

    .line 717
    if-eqz v2, :cond_2

    .line 720
    invoke-direct {p0, p2, v2, p3, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->eagerlyMergeMessageSetExtension(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/android/framework/protobuf/ExtensionRegistryLite;I)V

    .line 721
    const/4 v1, 0x0

    .line 722
    goto :goto_0

    .line 726
    :cond_2
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    goto :goto_3

    .line 729
    :cond_3
    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 730
    nop

    .line 734
    .end local v3    # "tag":I
    :goto_1
    sget v3, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 737
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 738
    if-eqz v2, :cond_4

    .line 739
    invoke-direct {p0, v1, p3, v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    goto :goto_2

    .line 741
    :cond_4
    if-eqz v1, :cond_5

    .line 742
    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)V

    .line 746
    :cond_5
    :goto_2
    return-void

    .line 733
    :cond_6
    :goto_3
    goto :goto_0
.end method

.method private blacklist parseExtension(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z
    .locals 16
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .param p5, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p3, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    .line 541
    .local v4, "wireType":I
    const/4 v5, 0x0

    .line 542
    .local v5, "unknown":Z
    const/4 v6, 0x0

    .line 543
    .local v6, "packed":Z
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_0

    .line 544
    const/4 v5, 0x1

    goto :goto_0

    .line 545
    :cond_0
    iget-object v9, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 547
    invoke-virtual {v9}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v9

    .line 546
    invoke-static {v9, v7}, Lcom/android/framework/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/android/framework/protobuf/WireFormat$FieldType;Z)I

    move-result v9

    if-ne v4, v9, :cond_1

    .line 548
    const/4 v6, 0x0

    goto :goto_0

    .line 549
    :cond_1
    iget-object v9, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v9, v9, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v9, :cond_2

    iget-object v9, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v9, v9, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 550
    invoke-virtual {v9}, Lcom/android/framework/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 553
    invoke-virtual {v9}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v9

    .line 552
    invoke-static {v9, v8}, Lcom/android/framework/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/android/framework/protobuf/WireFormat$FieldType;Z)I

    move-result v9

    if-ne v4, v9, :cond_2

    .line 554
    const/4 v6, 0x1

    goto :goto_0

    .line 556
    :cond_2
    const/4 v5, 0x1

    .line 559
    :goto_0
    if-eqz v5, :cond_3

    .line 560
    move/from16 v9, p4

    invoke-virtual {v0, v9, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result v7

    return v7

    .line 563
    :cond_3
    move/from16 v9, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    .line 565
    if-eqz v6, :cond_7

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v10

    .line 567
    .local v10, "length":I
    invoke-virtual {v1, v10}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v11

    .line 568
    .local v11, "limit":I
    iget-object v12, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v12

    sget-object v13, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne v12, v13, :cond_5

    .line 569
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_6

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 571
    .local v7, "rawValue":I
    iget-object v12, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v12

    invoke-interface {v12, v7}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v12

    .line 572
    .local v12, "value":Ljava/lang/Object;
    if-nez v12, :cond_4

    .line 575
    return v8

    .line 577
    :cond_4
    iget-object v13, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v14, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 578
    invoke-virtual {v3, v12}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 577
    invoke-virtual {v13, v14, v15}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 579
    .end local v7    # "rawValue":I
    .end local v12    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 581
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_6

    .line 582
    iget-object v12, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 584
    invoke-virtual {v12}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v12

    .line 583
    invoke-static {v1, v12, v7}, Lcom/android/framework/protobuf/FieldSet;->readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v12

    .line 585
    .restart local v12    # "value":Ljava/lang/Object;
    iget-object v13, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v14, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13, v14, v12}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 586
    .end local v12    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 588
    :cond_6
    invoke-virtual {v1, v11}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    .line 589
    .end local v10    # "length":I
    .end local v11    # "limit":I
    move/from16 v11, p5

    goto/16 :goto_5

    .line 591
    :cond_7
    sget-object v10, Lcom/android/framework/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v11, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 623
    move/from16 v11, p5

    iget-object v10, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 625
    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v10

    .line 624
    invoke-static {v1, v10, v7}, Lcom/android/framework/protobuf/FieldSet;->readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v10

    .local v10, "value":Ljava/lang/Object;
    goto :goto_4

    .line 613
    .end local v10    # "value":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 614
    .restart local v7    # "rawValue":I
    iget-object v10, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v10

    .line 617
    .restart local v10    # "value":Ljava/lang/Object;
    if-nez v10, :cond_8

    .line 618
    move/from16 v11, p5

    invoke-virtual {v0, v11, v7}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeVarintField(II)V

    .line 619
    return v8

    .line 617
    :cond_8
    move/from16 v11, p5

    goto :goto_4

    .line 594
    .end local v7    # "rawValue":I
    .end local v10    # "value":Ljava/lang/Object;
    :pswitch_1
    move/from16 v11, p5

    const/4 v7, 0x0

    .line 595
    .local v7, "subBuilder":Lcom/android/framework/protobuf/MessageLite$Builder;
    iget-object v10, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v10

    if-nez v10, :cond_9

    .line 596
    iget-object v10, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v12, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10, v12}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/framework/protobuf/MessageLite;

    .line 597
    .local v10, "existingValue":Lcom/android/framework/protobuf/MessageLite;
    if-eqz v10, :cond_9

    .line 598
    invoke-interface {v10}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v7

    .line 601
    .end local v10    # "existingValue":Lcom/android/framework/protobuf/MessageLite;
    :cond_9
    if-nez v7, :cond_a

    .line 602
    invoke-virtual/range {p3 .. p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/framework/protobuf/MessageLite;->newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v7

    .line 604
    :cond_a
    iget-object v10, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v10

    sget-object v12, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne v10, v12, :cond_b

    .line 605
    invoke-virtual/range {p3 .. p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v10

    invoke-virtual {v1, v10, v7, v2}, Lcom/android/framework/protobuf/CodedInputStream;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    goto :goto_3

    .line 607
    :cond_b
    invoke-virtual {v1, v7, v2}, Lcom/android/framework/protobuf/CodedInputStream;->readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 609
    :goto_3
    invoke-interface {v7}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v10

    .line 610
    .local v10, "value":Ljava/lang/Object;
    nop

    .line 629
    .end local v7    # "subBuilder":Lcom/android/framework/protobuf/MessageLite$Builder;
    :goto_4
    iget-object v7, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v7}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 630
    iget-object v7, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v12, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 631
    invoke-virtual {v3, v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 630
    invoke-virtual {v7, v12, v13}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_5

    .line 633
    :cond_c
    iget-object v7, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v12, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3, v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 636
    .end local v10    # "value":Ljava/lang/Object;
    :goto_5
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 787
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 793
    return-void

    .line 789
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 780
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->clone()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    return-object v0
.end method

.method protected blacklist extensionsAreInitialized()Z
    .locals 1

    .line 844
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected blacklist extensionsSerializedSize()I
    .locals 1

    .line 896
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected blacklist extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .line 900
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public final blacklist getExtension(Lcom/android/framework/protobuf/ExtensionLite;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 818
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<TMessageType;TType;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 820
    .local v0, "extensionLite":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 821
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v2, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 822
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 823
    iget-object v2, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object v2

    .line 825
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final blacklist getExtension(Lcom/android/framework/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 834
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 836
    .local v0, "extensionLite":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 837
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v2, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 839
    invoke-virtual {v1, v2, p2}, Lcom/android/framework/protobuf/FieldSet;->getRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v1

    .line 838
    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 837
    return-object v1
.end method

.method public final blacklist getExtensionCount(Lcom/android/framework/protobuf/ExtensionLite;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 808
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 810
    .local v0, "extensionLite":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 811
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v2, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v1

    return v1
.end method

.method public final blacklist hasExtension(Lcom/android/framework/protobuf/ExtensionLite;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 798
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<TMessageType;TType;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 800
    .local v0, "extensionLite":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 801
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v2, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/FieldSet;->hasField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v1

    return v1
.end method

.method protected final blacklist mergeExtensionFields(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 504
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "other":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "TMessageType;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->clone()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->mergeFrom(Lcom/android/framework/protobuf/FieldSet;)V

    .line 508
    return-void
.end method

.method protected blacklist newExtensionWriter()Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 887
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/android/framework/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected blacklist newMessageSetExtensionWriter()Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 891
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/android/framework/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected blacklist parseUnknownField(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;I)Z
    .locals 8
    .param p2, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    invoke-static {p4}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    .line 527
    .local v6, "fieldNumber":I
    nop

    .line 528
    invoke-virtual {p3, p1, v6}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v7

    .line 530
    .local v7, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, v7

    move v4, p4

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    move-result v0

    return v0
.end method

.method protected blacklist parseUnknownFieldAsMessageSet(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;I)Z
    .locals 2
    .param p2, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    sget v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    if-ne p4, v0, :cond_0

    .line 654
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromCodedStream(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 655
    const/4 v0, 0x1

    return v0

    .line 660
    :cond_0
    invoke-static {p4}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    .line 661
    .local v0, "wireType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 662
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    return v1

    .line 665
    :cond_1
    invoke-virtual {p2, p4}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    return v1
.end method
