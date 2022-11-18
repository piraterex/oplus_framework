.class public Landroid/window/WindowOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "WindowOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowOnBackInvokedDispatcher$Checker;,
        Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

.field private static final blacklist ENABLE_PREDICTIVE_BACK:Z

.field private static final blacklist TAG:Ljava/lang/String; = "WindowOnBackDispatcher"


# instance fields
.field private final blacklist mAllCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private final blacklist mOnBackInvokedCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mWindow:Landroid/view/IWindow;

.field private blacklist mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 54
    nop

    .line 55
    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    .line 56
    nop

    .line 57
    const-string/jumbo v0, "persist.wm.debug.predictive_back_always_enforce"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "applicationCallBackEnabled"    # Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    .line 69
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Z)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    .line 70
    return-void
.end method

.method public static blacklist isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 288
    sget-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    .line 290
    .local v0, "featureFlagEnabled":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 300
    .local v3, "appRequestsPredictiveBack":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    sget-boolean v4, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 180
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    if-nez v0, :cond_0

    goto :goto_2

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 185
    .local v0, "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    if-eqz p1, :cond_2

    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .local v1, "priority":I
    instance-of v2, p1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    if-eqz v2, :cond_1

    .line 191
    move-object v2, p1

    check-cast v2, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    invoke-virtual {v2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->getIOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_1
    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    invoke-direct {v2, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;-><init>(Landroid/window/OnBackInvokedCallback;)V

    :goto_0
    nop

    .line 193
    .local v2, "iCallback":Landroid/window/IOnBackInvokedCallback;
    new-instance v3, Landroid/window/OnBackInvokedCallbackInfo;

    invoke-direct {v3, v2, v1}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/window/IOnBackInvokedCallback;I)V

    move-object v0, v3

    .line 195
    .end local v1    # "priority":I
    .end local v2    # "iCallback":Landroid/window/IOnBackInvokedCallback;
    :cond_2
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set OnBackInvokedCallback to WM. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOnBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 181
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist attachToWindow(Landroid/view/IWindowSession;Landroid/view/IWindow;)V
    .locals 1
    .param p1, "windowSession"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;

    .line 77
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    .line 78
    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    .line 79
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 82
    :cond_0
    return-void
.end method

.method public blacklist clear()V
    .locals 2

    .line 167
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    .line 169
    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 175
    :cond_1
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 176
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 177
    return-void
.end method

.method public blacklist detachFromWindow()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->clear()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    .line 88
    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    .line 89
    return-void
.end method

.method public blacklist getChecker()Landroid/window/WindowOnBackInvokedDispatcher$Checker;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    return-object v0
.end method

.method public blacklist getTopCallback()Landroid/window/OnBackInvokedCallback;
    .locals 5

    .line 202
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 203
    return-object v1

    .line 205
    :cond_0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 206
    .local v2, "priority":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 207
    .local v3, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    return-object v0

    .line 210
    .end local v2    # "priority":Ljava/lang/Integer;
    .end local v3    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    :cond_1
    goto :goto_0

    .line 211
    :cond_2
    return-object v1
.end method

.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 95
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p2, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 98
    :cond_0
    return-void
.end method

.method public blacklist registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .locals 4
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p2, "priority"    # I

    .line 106
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p2, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 108
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 116
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 121
    .local v1, "prevPriority":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    .end local v1    # "prevPriority":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    .line 125
    .local v1, "previousTopCallback":Landroid/window/OnBackInvokedCallback;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_4

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    .line 129
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p2, :cond_4

    .line 130
    :cond_3
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 132
    :cond_4
    return-void
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 162
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 163
    return-void
.end method

.method public blacklist setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 0
    .param p1, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 306
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 307
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 136
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    .line 147
    .local v0, "previousTopCallback":Landroid/window/OnBackInvokedCallback;
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 148
    .local v1, "priority":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 149
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    if-ne v0, p1, :cond_3

    .line 156
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 158
    :cond_3
    return-void
.end method
