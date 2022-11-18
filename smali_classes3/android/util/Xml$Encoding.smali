.class public final enum Landroid/util/Xml$Encoding;
.super Ljava/lang/Enum;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Xml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/Xml$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/util/Xml$Encoding;

.field public static final enum whitelist ISO_8859_1:Landroid/util/Xml$Encoding;

.field public static final enum whitelist US_ASCII:Landroid/util/Xml$Encoding;

.field public static final enum whitelist UTF_16:Landroid/util/Xml$Encoding;

.field public static final enum whitelist UTF_8:Landroid/util/Xml$Encoding;


# instance fields
.field final greylist-max-o expatName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 338
    new-instance v0, Landroid/util/Xml$Encoding;

    const-string v1, "US_ASCII"

    const/4 v2, 0x0

    const-string v3, "US-ASCII"

    invoke-direct {v0, v1, v2, v3}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->US_ASCII:Landroid/util/Xml$Encoding;

    .line 339
    new-instance v1, Landroid/util/Xml$Encoding;

    const-string v3, "UTF_8"

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v4, v5}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .line 340
    new-instance v3, Landroid/util/Xml$Encoding;

    const-string v5, "UTF_16"

    const/4 v6, 0x2

    const-string v7, "UTF-16"

    invoke-direct {v3, v5, v6, v7}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/util/Xml$Encoding;->UTF_16:Landroid/util/Xml$Encoding;

    .line 341
    new-instance v5, Landroid/util/Xml$Encoding;

    const-string v7, "ISO_8859_1"

    const/4 v8, 0x3

    const-string v9, "ISO-8859-1"

    invoke-direct {v5, v7, v8, v9}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    .line 336
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/util/Xml$Encoding;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "expatName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 345
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 346
    iput-object p3, p0, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 336
    const-class v0, Landroid/util/Xml$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/Xml$Encoding;

    return-object v0
.end method

.method public static whitelist values()[Landroid/util/Xml$Encoding;
    .locals 1

    .line 336
    sget-object v0, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, [Landroid/util/Xml$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Xml$Encoding;

    return-object v0
.end method
