.class public enum Lcom/android/framework/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist BOOL:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist BYTES:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist DOUBLE:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist FIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist FIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist FLOAT:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist INT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist INT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist MESSAGE:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist SFIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist SFIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist SINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist SINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist STRING:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist UINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist UINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;


# instance fields
.field private final blacklist javaType:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field private final blacklist wireType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 22

    .line 112
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 113
    new-instance v1, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 114
    new-instance v2, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v5, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v2, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 115
    new-instance v5, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v7, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v5, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 116
    new-instance v7, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v9, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v7, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 117
    new-instance v9, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v11, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v13, "FIXED64"

    invoke-direct {v9, v13, v6, v11, v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v9, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 118
    new-instance v11, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v13, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v11, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 119
    new-instance v13, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v14, Lcom/android/framework/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v13, Lcom/android/framework/protobuf/WireFormat$FieldType;->BOOL:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 120
    new-instance v14, Lcom/android/framework/protobuf/WireFormat$FieldType$1;

    sget-object v15, Lcom/android/framework/protobuf/WireFormat$JavaType;->STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v12, "STRING"

    const/16 v4, 0x8

    invoke-direct {v14, v12, v4, v15, v8}, Lcom/android/framework/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v14, Lcom/android/framework/protobuf/WireFormat$FieldType;->STRING:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 126
    new-instance v12, Lcom/android/framework/protobuf/WireFormat$FieldType$2;

    sget-object v15, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v12, v4, v6, v15, v10}, Lcom/android/framework/protobuf/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v12, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 132
    new-instance v4, Lcom/android/framework/protobuf/WireFormat$FieldType$3;

    sget-object v15, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v6, "MESSAGE"

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Lcom/android/framework/protobuf/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v4, Lcom/android/framework/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 138
    new-instance v6, Lcom/android/framework/protobuf/WireFormat$FieldType$4;

    sget-object v15, Lcom/android/framework/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Lcom/android/framework/protobuf/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Lcom/android/framework/protobuf/WireFormat$FieldType;->BYTES:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 144
    new-instance v10, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v15, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v3, "UINT32"

    const/16 v8, 0xc

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v10, v3, v8, v15, v6}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 145
    new-instance v3, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v15, Lcom/android/framework/protobuf/WireFormat$JavaType;->ENUM:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v8, "ENUM"

    move-object/from16 v17, v10

    const/16 v10, 0xd

    invoke-direct {v3, v8, v10, v15, v6}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 146
    new-instance v6, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v8, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v15, "SFIXED32"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-direct {v6, v15, v10, v8, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 147
    new-instance v3, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v8, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v15, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v10, v8, v6}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 148
    new-instance v6, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v8, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v15, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v6, v15, v10, v8, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 149
    new-instance v8, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v15, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v10, "SINT64"

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v8, v10, v6, v15, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v8, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 111
    const/16 v10, 0x12

    new-array v10, v10, [Lcom/android/framework/protobuf/WireFormat$FieldType;

    aput-object v0, v10, v3

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v14, v10, v0

    const/16 v0, 0x9

    aput-object v12, v10, v0

    const/16 v0, 0xa

    aput-object v4, v10, v0

    const/16 v0, 0xb

    aput-object v16, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    aput-object v8, v10, v6

    sput-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/android/framework/protobuf/WireFormat$FieldType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V
    .locals 0
    .param p3, "javaType"    # Lcom/android/framework/protobuf/WireFormat$JavaType;
    .param p4, "wireType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput-object p3, p0, Lcom/android/framework/protobuf/WireFormat$FieldType;->javaType:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 153
    iput p4, p0, Lcom/android/framework/protobuf/WireFormat$FieldType;->wireType:I

    .line 154
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;ILcom/android/framework/protobuf/WireFormat$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/framework/protobuf/WireFormat$JavaType;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/android/framework/protobuf/WireFormat$1;

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/WireFormat$FieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 111
    const-class v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/WireFormat$FieldType;
    .locals 1

    .line 111
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public blacklist getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/framework/protobuf/WireFormat$FieldType;->javaType:Lcom/android/framework/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public blacklist getWireType()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/android/framework/protobuf/WireFormat$FieldType;->wireType:I

    return v0
.end method

.method public blacklist isPackable()Z
    .locals 1

    .line 168
    const/4 v0, 0x1

    return v0
.end method
