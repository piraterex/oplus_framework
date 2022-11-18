.class public Landroid/os/OplusManager$StampId;
.super Ljava/lang/Object;
.source "OplusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StampId"
.end annotation


# static fields
.field public static whitelist AD_BATTERYOFF:Ljava/lang/String;

.field public static whitelist AD_DEVICE:Ljava/lang/String;

.field public static whitelist AD_EMMCCHECK:Ljava/lang/String;

.field public static whitelist AD_FILECHECK:Ljava/lang/String;

.field public static whitelist AD_JE:Ljava/lang/String;

.field public static whitelist AD_KE:Ljava/lang/String;

.field public static whitelist AD_OCP:Ljava/lang/String;

.field public static whitelist AD_PMICREASON:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 765
    const-string v0, "000000"

    sput-object v0, Landroid/os/OplusManager$StampId;->AD_DEVICE:Ljava/lang/String;

    .line 766
    const-string v0, "010101"

    sput-object v0, Landroid/os/OplusManager$StampId;->AD_KE:Ljava/lang/String;

    .line 767
    const-string v0, "010102"

    sput-object v0, Landroid/os/OplusManager$StampId;->AD_JE:Ljava/lang/String;

    .line 768
    const-string v0, "010103"

    sput-object v0, Landroid/os/OplusManager$StampId;->AD_OCP:Ljava/lang/String;

    .line 769
    const-string v0, "010104"

    sput-object v0, Landroid/os/OplusManager$StampId;->AD_FILECHECK:Ljava/lang/String;

    .line 770
    const-string v0, "010105"

    sput-object v0, Landroid/os/OplusManager$StampId;->AD_EMMCCHECK:Ljava/lang/String;

    .line 771
    const-string v0, "010107"

    sput-object v0, Landroid/os/OplusManager$StampId;->AD_PMICREASON:Ljava/lang/String;

    .line 772
    const-string v0, "010201"

    sput-object v0, Landroid/os/OplusManager$StampId;->AD_BATTERYOFF:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
