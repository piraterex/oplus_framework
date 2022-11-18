.class public Landroid/os/OplusJankMonitorExtPlugin;
.super Ljava/lang/Object;
.source "OplusJankMonitorExtPlugin.java"


# static fields
.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist setLaunchStageTime:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Ljava/lang/String;,
            Ljava/lang/String;,
            J
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist startLaunchTrace:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Z,
            Ljava/lang/String;,
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist stopLaunchTrace:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Ljava/lang/String;,
            I,
            J
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 10
    const-class v0, Landroid/os/OplusJankMonitorExtPlugin;

    const-string v1, "android.os.OplusJankMonitorExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/OplusJankMonitorExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
