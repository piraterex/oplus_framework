.class public Lcom/android/internal/policy/DecorContext;
.super Landroid/view/ContextThemeWrapper;
.source "DecorContext.java"


# instance fields
.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3
    .param p1, "baseContext"    # Landroid/content/Context;
    .param p2, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 53
    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    .line 55
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, "displayContext":Landroid/content/Context;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->updateDisplay(I)V

    goto :goto_0

    .line 61
    .end local v1    # "displayContext":Landroid/content/Context;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    .line 63
    .restart local v1    # "displayContext":Landroid/content/Context;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorContext;->attachBaseContext(Landroid/content/Context;)V

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAutofillOptions()Landroid/content/AutofillOptions;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 117
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v1

    return-object v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 126
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v1

    return-object v1

    .line 129
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 102
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/DecorContext;->mResources:Landroid/content/res/Resources;

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mResources:Landroid/content/res/Resources;

    return-object v1
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 79
    .local v0, "context":Landroid/content/Context;
    const-string v1, "content_capture"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v1, :cond_1

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object v1, p0, Lcom/android/internal/policy/DecorContext;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v1

    .line 89
    :cond_2
    const-string v1, "display"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 94
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public whitelist isUiContext()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 135
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->isUiContext()Z

    move-result v1

    return v1

    .line 138
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method blacklist setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 2
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/DecorContext;->mResources:Landroid/content/res/Resources;

    .line 71
    return-void
.end method
