.class public final enum Landroid/util/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/util/JsonToken;

.field public static final enum whitelist BEGIN_ARRAY:Landroid/util/JsonToken;

.field public static final enum whitelist BEGIN_OBJECT:Landroid/util/JsonToken;

.field public static final enum whitelist BOOLEAN:Landroid/util/JsonToken;

.field public static final enum whitelist END_ARRAY:Landroid/util/JsonToken;

.field public static final enum whitelist END_DOCUMENT:Landroid/util/JsonToken;

.field public static final enum whitelist END_OBJECT:Landroid/util/JsonToken;

.field public static final enum whitelist NAME:Landroid/util/JsonToken;

.field public static final enum whitelist NULL:Landroid/util/JsonToken;

.field public static final enum whitelist NUMBER:Landroid/util/JsonToken;

.field public static final enum whitelist STRING:Landroid/util/JsonToken;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    .line 34
    new-instance v1, Landroid/util/JsonToken;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    .line 40
    new-instance v3, Landroid/util/JsonToken;

    const-string v5, "BEGIN_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 46
    new-instance v5, Landroid/util/JsonToken;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    .line 53
    new-instance v7, Landroid/util/JsonToken;

    const-string v9, "NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    .line 58
    new-instance v9, Landroid/util/JsonToken;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 64
    new-instance v11, Landroid/util/JsonToken;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 69
    new-instance v13, Landroid/util/JsonToken;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    .line 74
    new-instance v15, Landroid/util/JsonToken;

    const-string v14, "NULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    .line 81
    new-instance v14, Landroid/util/JsonToken;

    const-string v12, "END_DOCUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    .line 22
    const/16 v12, 0xa

    new-array v12, v12, [Landroid/util/JsonToken;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/util/JsonToken;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Landroid/util/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/JsonToken;

    return-object v0
.end method

.method public static whitelist values()[Landroid/util/JsonToken;
    .locals 1

    .line 22
    sget-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    invoke-virtual {v0}, [Landroid/util/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/JsonToken;

    return-object v0
.end method
