.class public Landroid/hardware/fingerprint/util/OplusFingerprintSupportUtilsExtPlugin;
.super Ljava/lang/Object;
.source "OplusFingerprintSupportUtilsExtPlugin.java"


# static fields
.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist getSupportSensorType:Lcom/oplus/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 7
    const-class v0, Landroid/hardware/fingerprint/util/OplusFingerprintSupportUtilsExtPlugin;

    const-string v1, "android.hardware.fingerprint.util.OplusFingerprintSupportUtils"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/hardware/fingerprint/util/OplusFingerprintSupportUtilsExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
