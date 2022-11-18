.class public Landroid/content/pm/ResolveInfoExtPlugin;
.super Ljava/lang/Object;
.source "ResolveInfoExtPlugin.java"


# static fields
.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist getDrawableByComponentInfoInLoadIcon:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/content/pm/PackageManager;,
            Landroid/content/pm/ResolveInfo;,
            Ljava/lang/String;,
            I,
            Landroid/content/pm/ApplicationInfo;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist getDrawableByResolvePackageNameInLoadIcon:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/content/pm/PackageManager;,
            Landroid/content/pm/ResolveInfo;,
            Ljava/lang/String;,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 27
    const-class v0, Landroid/content/pm/ResolveInfoExtPlugin;

    const-string v1, "android.content.pm.ResolveInfoExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ResolveInfoExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
