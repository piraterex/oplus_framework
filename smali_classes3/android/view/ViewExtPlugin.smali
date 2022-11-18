.class public Landroid/view/ViewExtPlugin;
.super Ljava/lang/Object;
.source "ViewExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist constructor:Lcom/oplus/internal/reflect/RefConstructor;
    .annotation runtime Lcom/oplus/internal/reflect/MethodName;
        params = {
            Landroid/view/View;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/internal/reflect/RefConstructor<",
            "Landroid/view/IViewExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 29
    const-class v0, Landroid/view/ViewExtPlugin;

    const-string v1, "android.view.ViewExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/internal/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/view/ViewExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
