.class public abstract Landroid/view/accessibility/AccessibilityNodeProvider;
.super Ljava/lang/Object;
.source "AccessibilityNodeProvider.java"


# static fields
.field public static final whitelist HOST_VIEW_ID:I = -0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "extraDataKey"    # Ljava/lang/String;
    .param p4, "arguments"    # Landroid/os/Bundle;

    .line 222
    return-void
.end method

.method public whitelist createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "focus"    # I

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 239
    const/4 v0, 0x0

    return v0
.end method
