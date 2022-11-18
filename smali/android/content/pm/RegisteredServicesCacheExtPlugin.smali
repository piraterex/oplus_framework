.class public Landroid/content/pm/RegisteredServicesCacheExtPlugin;
.super Ljava/lang/Object;
.source "RegisteredServicesCacheExtPlugin.java"


# static fields
.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist constructor:Lcom/oplus/reflect/RefConstructor;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Ljava/lang/Object;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefConstructor<",
            "Landroid/content/pm/IRegisteredServicesCacheExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 8
    const-class v0, Landroid/content/pm/RegisteredServicesCacheExtPlugin;

    const-string v1, "android.content.pm.RegisteredServicesCacheExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/content/pm/RegisteredServicesCacheExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
