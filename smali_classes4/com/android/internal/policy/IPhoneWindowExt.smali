.class public interface abstract Lcom/android/internal/policy/IPhoneWindowExt;
.super Ljava/lang/Object;
.source "IPhoneWindowExt.java"


# virtual methods
.method public blacklist getContentParent()Landroid/view/ViewGroup;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWindowTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method public blacklist hookGenerateLayout(Lcom/android/internal/policy/PhoneWindow;Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 0
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "context"    # Landroid/content/Context;

    .line 52
    return-void
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    return-void
.end method

.method public blacklist isUseDefaultNavigationBarColor()Z
    .locals 1

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setSystemBarColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 33
    return-void
.end method
