.class public Landroid/hardware/camera2/utils/SurfaceUtilsExtPlugin;
.super Ljava/lang/Object;
.source "SurfaceUtilsExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist getInstance:Lcom/oplus/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Landroid/hardware/camera2/utils/ISurfaceUtilsExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 11
    const-class v0, Landroid/hardware/camera2/utils/SurfaceUtilsExtPlugin;

    const-string v1, "android.hardware.camera2.utils.SurfaceUtilsExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/utils/SurfaceUtilsExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
