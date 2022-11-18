.class final Lcom/android/framework/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/framework/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist cachedSizeField:Ljava/lang/reflect/Field;

.field private final blacklist enforceUtf8:Z

.field private final blacklist enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

.field private final blacklist field:Ljava/lang/reflect/Field;

.field private final blacklist fieldNumber:I

.field private final blacklist mapDefaultEntry:Ljava/lang/Object;

.field private final blacklist messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist oneof:Lcom/android/framework/protobuf/OneofInfo;

.field private final blacklist oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist presenceField:Ljava/lang/reflect/Field;

.field private final blacklist presenceMask:I

.field private final blacklist required:Z

.field private final blacklist type:Lcom/android/framework/protobuf/FieldType;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldNumber"    # I
    .param p3, "type"    # Lcom/android/framework/protobuf/FieldType;
    .param p5, "presenceField"    # Ljava/lang/reflect/Field;
    .param p6, "presenceMask"    # I
    .param p7, "required"    # Z
    .param p8, "enforceUtf8"    # Z
    .param p9, "oneof"    # Lcom/android/framework/protobuf/OneofInfo;
    .param p11, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p12, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .param p13, "cachedSizeField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 332
    .local p4, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p10, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 334
    iput-object p3, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    .line 335
    iput-object p4, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    .line 336
    iput p2, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    .line 337
    iput-object p5, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    .line 338
    iput p6, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceMask:I

    .line 339
    iput-boolean p7, p0, Lcom/android/framework/protobuf/FieldInfo;->required:Z

    .line 340
    iput-boolean p8, p0, Lcom/android/framework/protobuf/FieldInfo;->enforceUtf8:Z

    .line 341
    iput-object p9, p0, Lcom/android/framework/protobuf/FieldInfo;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    .line 342
    iput-object p10, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    .line 343
    iput-object p11, p0, Lcom/android/framework/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    .line 344
    iput-object p12, p0, Lcom/android/framework/protobuf/FieldInfo;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 345
    iput-object p13, p0, Lcom/android/framework/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    .line 346
    return-void
.end method

.method private static blacklist checkFieldNumber(I)V
    .locals 3
    .param p0, "fieldNumber"    # I

    .line 260
    if-lez p0, :cond_0

    .line 263
    return-void

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNumber must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Z)Lcom/android/framework/protobuf/FieldInfo;
    .locals 17
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "enforceUtf8"    # Z

    .line 66
    move-object/from16 v14, p2

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 67
    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string v0, "fieldType"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v14, v0, :cond_0

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v14, v0, :cond_0

    .line 72
    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .locals 16
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 139
    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static blacklist forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .locals 17
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p3, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 300
    const-string/jumbo v0, "mapDefaultEntry"

    move-object/from16 v15, p2

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 302
    const-string v0, "field"

    move-object/from16 v14, p0

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    sget-object v4, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static blacklist forOneofMemberField(ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .locals 18
    .param p0, "fieldNumber"    # I
    .param p1, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p2, "oneof"    # Lcom/android/framework/protobuf/OneofInfo;
    .param p4, "enforceUtf8"    # Z
    .param p5, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/android/framework/protobuf/FieldInfo;"
        }
    .end annotation

    .line 232
    .local p3, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v14, p1

    invoke-static/range {p0 .. p0}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 233
    const-string v0, "fieldType"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v0, "oneof"

    move-object/from16 v15, p2

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v0, "oneofStoredType"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldType;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forPackedField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;
    .locals 17
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "cachedSizeField"    # Ljava/lang/reflect/Field;

    .line 91
    move-object/from16 v14, p2

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 92
    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string v0, "fieldType"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v14, v0, :cond_0

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v14, v0, :cond_0

    .line 97
    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;
    .locals 16
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .param p4, "cachedSizeField"    # Ljava/lang/reflect/Field;

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 163
    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static blacklist forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .locals 18
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "presenceField"    # Ljava/lang/reflect/Field;
    .param p4, "presenceMask"    # I
    .param p5, "enforceUtf8"    # Z
    .param p6, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 189
    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 190
    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "fieldType"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v0, "presenceField"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    if-eqz v14, :cond_1

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v12, p4

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v12, p4

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    move/from16 v12, p4

    .line 197
    :goto_0
    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16
.end method

.method public static blacklist forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .locals 18
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "presenceField"    # Ljava/lang/reflect/Field;
    .param p4, "presenceMask"    # I
    .param p5, "enforceUtf8"    # Z
    .param p6, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 274
    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 275
    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v0, "fieldType"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v0, "presenceField"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    if-eqz v14, :cond_1

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v12, p4

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v12, p4

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    move/from16 v12, p4

    .line 282
    :goto_0
    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16
.end method

.method public static blacklist forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;)Lcom/android/framework/protobuf/FieldInfo;
    .locals 18
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/framework/protobuf/FieldInfo;"
        }
    .end annotation

    .line 116
    .local p3, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 117
    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "fieldType"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v0, "messageClass"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method private static blacklist isExactlyOneBitSet(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 575
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist newBuilder()Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 2

    .line 446
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldInfo$Builder;-><init>(Lcom/android/framework/protobuf/FieldInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/framework/protobuf/FieldInfo;)I
    .locals 2
    .param p1, "o"    # Lcom/android/framework/protobuf/FieldInfo;

    .line 384
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    iget v1, p1, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lcom/android/framework/protobuf/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldInfo;->compareTo(Lcom/android/framework/protobuf/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public blacklist getCachedSizeField()Ljava/lang/reflect/Field;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public blacklist getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getFieldNumber()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public blacklist getListElementType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getMapDefaultEntry()Ljava/lang/Object;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getMessageFieldClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/android/framework/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 441
    const/4 v0, 0x0

    return-object v0

    .line 439
    :pswitch_0
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0

    .line 436
    :pswitch_1
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getOneof()Lcom/android/framework/protobuf/OneofInfo;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    return-object v0
.end method

.method public blacklist getOneofStoredType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getPresenceField()Ljava/lang/reflect/Field;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getPresenceMask()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public blacklist getType()Lcom/android/framework/protobuf/FieldType;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method

.method public blacklist isEnforceUtf8()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public blacklist isRequired()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo;->required:Z

    return v0
.end method
