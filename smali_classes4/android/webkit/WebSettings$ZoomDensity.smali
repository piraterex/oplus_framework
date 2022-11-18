.class public final enum Landroid/webkit/WebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum whitelist CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum whitelist FAR:Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum whitelist MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;


# instance fields
.field greylist-max-o value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 111
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    const-string v1, "FAR"

    const/4 v2, 0x0

    const/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    .line 112
    new-instance v1, Landroid/webkit/WebSettings$ZoomDensity;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v3, v4, v5}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    .line 113
    new-instance v3, Landroid/webkit/WebSettings$ZoomDensity;

    const-string v5, "CLOSE"

    const/4 v6, 0x2

    const/16 v7, 0x4b

    invoke-direct {v3, v5, v6, v7}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    .line 110
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/webkit/WebSettings$ZoomDensity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/webkit/WebSettings$ZoomDensity;->$VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

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

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput p3, p0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    .line 116
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    const-class v0, Landroid/webkit/WebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .line 110
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->$VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getValue()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    return v0
.end method
