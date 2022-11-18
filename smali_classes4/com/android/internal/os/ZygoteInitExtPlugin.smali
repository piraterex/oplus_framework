.class public Lcom/android/internal/os/ZygoteInitExtPlugin;
.super Ljava/lang/Object;
.source "ZygoteInitExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist addBootEvent:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Ljava/lang/String;
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

.field public static blacklist beginHookGcAndFinalize:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Z
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

.field public static blacklist beginHookPreload:Lcom/oplus/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist endHookGcAndFinalize:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Z
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

.field public static blacklist endHookPreload:Lcom/oplus/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist hookPreloadResources:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/content/res/Resources;,
            Ljava/lang/String;
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
    const-class v0, Lcom/android/internal/os/ZygoteInitExtPlugin;

    const-string v1, "com.android.internal.os.ZygoteInitExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ZygoteInitExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
