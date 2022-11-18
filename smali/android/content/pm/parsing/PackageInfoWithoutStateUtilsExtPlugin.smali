.class public Landroid/content/pm/parsing/PackageInfoWithoutStateUtilsExtPlugin;
.super Ljava/lang/Object;
.source "PackageInfoWithoutStateUtilsExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist adjustResultInGenerateApplicationInfoUnchecked:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/content/pm/ApplicationInfo;,
            Landroid/content/pm/pkg/FrameworkPackageUserState;,
            Landroid/content/pm/IApplicationInfoExt;
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

    .line 34
    const-class v0, Landroid/content/pm/parsing/PackageInfoWithoutStateUtilsExtPlugin;

    const-string v1, "android.content.pm.parsing.PackageInfoWithoutStateUtilsExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/content/pm/parsing/PackageInfoWithoutStateUtilsExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
