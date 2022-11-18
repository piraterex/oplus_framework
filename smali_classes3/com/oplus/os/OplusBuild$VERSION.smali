.class public Lcom/oplus/os/OplusBuild$VERSION;
.super Ljava/lang/Object;
.source "OplusBuild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/os/OplusBuild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final whitelist RELEASE:Ljava/lang/String;

.field public static final whitelist SDK_SUB_VERSION:I

.field public static final whitelist SDK_VERSION:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 300
    const-string/jumbo v0, "ro.build.version.oplusrom"

    invoke-static {v0}, Lcom/oplus/os/OplusBuild;->-$$Nest$smgetVersionProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/os/OplusBuild$VERSION;->RELEASE:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/oplus/os/OplusBuild;->getOplusOSVERSION()I

    move-result v0

    const-string/jumbo v1, "ro.build.version.oplus.api"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    .line 315
    const-string/jumbo v0, "ro.build.version.oplus.sub_api"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oplus/os/OplusBuild$VERSION;->SDK_SUB_VERSION:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
