.class public Landroid/view/accessibility/AccessibilityNodeInfoExtPlugin;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoExtPlugin.java"


# static fields
.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist getRealClassName:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/view/accessibility/AccessibilityNodeInfo;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist setRealClassName:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Ljava/lang/CharSequence;,
            Landroid/view/accessibility/AccessibilityNodeInfo;
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

    .line 31
    const-class v0, Landroid/view/accessibility/AccessibilityNodeInfoExtPlugin;

    const-string v1, "android.view.accessibility.AccessibilityNodeInfoExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfoExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
