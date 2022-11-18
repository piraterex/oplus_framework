.class public final enum Landroid/webkit/WebSettings$TextSize;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$TextSize;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist LARGER:Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist LARGEST:Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist NORMAL:Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist SMALLER:Landroid/webkit/WebSettings$TextSize;

.field public static final enum whitelist SMALLEST:Landroid/webkit/WebSettings$TextSize;


# instance fields
.field greylist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 90
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    const-string v1, "SMALLEST"

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    .line 91
    new-instance v1, Landroid/webkit/WebSettings$TextSize;

    const-string v3, "SMALLER"

    const/4 v4, 0x1

    const/16 v5, 0x4b

    invoke-direct {v1, v3, v4, v5}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    .line 92
    new-instance v3, Landroid/webkit/WebSettings$TextSize;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    const/16 v7, 0x64

    invoke-direct {v3, v5, v6, v7}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 93
    new-instance v5, Landroid/webkit/WebSettings$TextSize;

    const-string v7, "LARGER"

    const/4 v8, 0x3

    const/16 v9, 0x96

    invoke-direct {v5, v7, v8, v9}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    .line 94
    new-instance v7, Landroid/webkit/WebSettings$TextSize;

    const-string v9, "LARGEST"

    const/4 v10, 0x4

    const/16 v11, 0xc8

    invoke-direct {v7, v9, v10, v11}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    .line 88
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/webkit/WebSettings$TextSize;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/webkit/WebSettings$TextSize;->$VALUES:[Landroid/webkit/WebSettings$TextSize;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Landroid/webkit/WebSettings$TextSize;->value:I

    .line 97
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    const-class v0, Landroid/webkit/WebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .line 88
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->$VALUES:[Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method
