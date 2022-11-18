.class public Landroid/view/accessibility/AccessibilityManagerExtPlugin;
.super Ljava/lang/Object;
.source "AccessibilityManagerExtPlugin.java"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefConstructor<",
            "Landroid/view/accessibility/IAccessibilityManagerExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 28
    const-class v0, Landroid/view/accessibility/AccessibilityManagerExtPlugin;

    const-string v1, "android.view.accessibility.AccessibilityManagerExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/view/accessibility/AccessibilityManagerExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
