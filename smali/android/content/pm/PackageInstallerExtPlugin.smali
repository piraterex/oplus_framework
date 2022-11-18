.class public Landroid/content/pm/PackageInstallerExtPlugin;
.super Ljava/lang/Object;
.source "PackageInstallerExtPlugin.java"


# static fields
.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist interceptCreateSession:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 25
    const-class v0, Landroid/content/pm/PackageInstallerExtPlugin;

    const-string v1, "android.content.pm.PackageInstallerExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageInstallerExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
