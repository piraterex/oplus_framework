.class public Lcom/android/server/SystemConfigExtPlugin;
.super Ljava/lang/Object;
.source "SystemConfigExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist constructor:Lcom/oplus/reflect/RefConstructor;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Lcom/android/server/SystemConfig;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefConstructor<",
            "Lcom/android/server/ISystemConfigExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/android/server/SystemConfigExtPlugin;

    const-string v1, "com.android.server.SystemConfigExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemConfigExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
