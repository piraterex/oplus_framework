.class public Landroid/content/pm/PackageParserExtPlugin;
.super Ljava/lang/Object;
.source "PackageParserExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist adjustPermissionInParseBaseApkCommon:Lcom/oplus/internal/reflect/RefMethod;
    .annotation runtime Lcom/oplus/internal/reflect/MethodName;
        params = {
            Landroid/content/pm/PackageParser$Package;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/internal/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist hookUpdateApplicationInfo:Lcom/oplus/internal/reflect/RefMethod;
    .annotation runtime Lcom/oplus/internal/reflect/MethodName;
        params = {
            Landroid/content/pm/IApplicationInfoExt;,
            Landroid/content/pm/pkg/FrameworkPackageUserState;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/internal/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist skipValidateName:Lcom/oplus/internal/reflect/RefMethod;
    .annotation runtime Lcom/oplus/internal/reflect/MethodName;
        params = {
            Ljava/lang/String;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/internal/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 32
    const-class v0, Landroid/content/pm/PackageParserExtPlugin;

    const-string v1, "android.content.pm.PackageParserExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/internal/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageParserExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
