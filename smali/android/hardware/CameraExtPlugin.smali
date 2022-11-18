.class public Landroid/hardware/CameraExtPlugin;
.super Ljava/lang/Object;
.source "CameraExtPlugin.java"


# static fields
.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist getInstance:Lcom/oplus/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Landroid/hardware/ICameraExt;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist interceptOpen:Lcom/oplus/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist interceptOpenLegacy:Lcom/oplus/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist interceptOpenWithCameraId:Lcom/oplus/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 11
    const-class v0, Landroid/hardware/CameraExtPlugin;

    const-string v1, "android.hardware.CameraExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/hardware/CameraExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
