.class public abstract Landroid/service/autofill/InlineSuggestionRenderService;
.super Landroid/app/Service;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;,
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.InlineSuggestionRenderService"

.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionRenderService"


# instance fields
.field private final blacklist mActiveInlineSuggestions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field private final blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveInlineSuggestions(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/util/LruCache;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroySuggestionViews(Landroid/service/autofill/InlineSuggestionRenderService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/InlineSuggestionRenderService;->handleDestroySuggestionViews(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleGetInlineSuggestionsRendererInfo(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/InlineSuggestionRenderService;->handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRenderSuggestion(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/service/autofill/InlineSuggestionRenderService;->handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$1;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/InlineSuggestionRenderService$1;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;I)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-void
.end method

.method private blacklist handleDestroySuggestionViews(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "sessionId"    # I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDestroySuggestionViews called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 226
    .local v2, "inlineSuggestionUi":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    .line 231
    .end local v2    # "inlineSuggestionUi":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    :cond_0
    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method private blacklist handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 218
    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRenderService;->onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    .local v0, "rendererInfo":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method private blacklist handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 19
    .param p1, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p2, "presentation"    # Landroid/service/autofill/InlinePresentation;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "hostInputToken"    # Landroid/os/IBinder;
    .param p6, "displayId"    # I
    .param p7, "userId"    # I
    .param p8, "sessionId"    # I

    .line 134
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    const-string v12, "InlineSuggestionRenderService"

    if-nez v11, :cond_0

    .line 136
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException calling onError()"

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 144
    :cond_0
    move/from16 v13, p6

    invoke-virtual {v7, v13}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 146
    const/4 v14, 0x0

    move-object/from16 v15, p2

    :try_start_1
    invoke-virtual {v7, v15, v9, v10}, Landroid/service/autofill/InlineSuggestionRenderService;->onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    .line 147
    .local v6, "suggestionView":Landroid/view/View;
    if-nez v6, :cond_1

    .line 148
    const-string v0, "ExtServices failed to render the inline suggestion view."

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 152
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "Null suggestion view returned by renderer"

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v7, v14}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 154
    return-void

    .line 156
    :cond_1
    :try_start_4
    iput-object v8, v7, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 157
    nop

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v5

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v0

    .line 157
    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v14, v6

    .end local v6    # "suggestionView":Landroid/view/View;
    .local v14, "suggestionView":Landroid/view/View;
    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/InlineSuggestionRenderService;->measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 160
    .local v0, "measuredSize":Landroid/util/Size;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", measuredSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Landroid/service/autofill/InlineSuggestionRoot;

    invoke-direct {v1, v7, v8}, Landroid/service/autofill/InlineSuggestionRoot;-><init>(Landroid/content/Context;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    move-object v12, v1

    .line 163
    .local v12, "suggestionRoot":Landroid/service/autofill/InlineSuggestionRoot;
    invoke-virtual {v12, v14}, Landroid/service/autofill/InlineSuggestionRoot;->addView(Landroid/view/View;)V

    .line 164
    new-instance v16, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 165
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x2

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v6, v16

    .line 168
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/view/SurfaceControlViewHost;

    invoke-virtual/range {p0 .. p0}, Landroid/service/autofill/InlineSuggestionRenderService;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v1, v7, v2, v11}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    move-object v5, v1

    .line 170
    .local v5, "host":Landroid/view/SurfaceControlViewHost;
    invoke-virtual {v5, v12, v6}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 175
    new-instance v1, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    nop

    .line 183
    invoke-virtual {v14}, Landroid/view/View;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    move-object v4, v1

    .line 184
    .local v4, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    new-instance v1, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, v4, v8}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    new-instance v16, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    iget-object v3, v7, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v18, v4

    .end local v4    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .local v18, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v4, v17

    move-object v9, v5

    .end local v5    # "host":Landroid/view/SurfaceControlViewHost;
    .local v9, "host":Landroid/view/SurfaceControlViewHost;
    move/from16 v5, p7

    move-object/from16 v17, v6

    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .local v17, "lp":Landroid/view/WindowManager$LayoutParams;
    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/view/SurfaceControlViewHost;Landroid/os/Handler;II)V

    move-object/from16 v1, v16

    .line 197
    .local v1, "uiImpl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    iget-object v2, v7, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, v7, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v8, v1, v9, v0}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    const/4 v1, 0x0

    .end local v0    # "measuredSize":Landroid/util/Size;
    .end local v1    # "uiImpl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    .end local v9    # "host":Landroid/view/SurfaceControlViewHost;
    .end local v12    # "suggestionRoot":Landroid/service/autofill/InlineSuggestionRoot;
    .end local v14    # "suggestionView":Landroid/view/View;
    .end local v17    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    invoke-virtual {v7, v1}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 214
    throw v0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$0(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)V
    .locals 3
    .param p0, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p1, "v"    # Landroid/view/View;

    .line 177
    :try_start_0
    invoke-interface {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$1(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)Z
    .locals 3
    .param p0, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p1, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p2, "v"    # Landroid/view/View;

    .line 185
    if-eqz p0, :cond_0

    .line 186
    invoke-interface {p0, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 189
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onLongClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onLongClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$2(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V
    .locals 4
    .param p0, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p1, "uiImpl"    # Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    .param p2, "host"    # Landroid/view/SurfaceControlViewHost;
    .param p3, "measuredSize"    # Landroid/util/Size;

    .line 205
    :try_start_0
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;

    invoke-direct {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;-><init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V

    .line 206
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v1

    .line 207
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 205
    invoke-interface {p0, v0, v1, v2, v3}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onContent(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onContent()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minSize"    # Landroid/util/Size;
    .param p5, "maxSize"    # Landroid/util/Size;

    .line 108
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    if-eq p3, v0, :cond_0

    .line 110
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 113
    :cond_0
    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_1

    .line 114
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "widthMeasureSpec":I
    goto :goto_0

    .line 117
    .end local v3    # "widthMeasureSpec":I
    :cond_1
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 120
    .restart local v3    # "widthMeasureSpec":I
    :goto_0
    if-ne p3, v0, :cond_2

    .line 121
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "heightMeasureSpec":I
    goto :goto_1

    .line 124
    .end local v0    # "heightMeasureSpec":I
    :cond_2
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 126
    .restart local v0    # "heightMeasureSpec":I
    :goto_1
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 127
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 127
    return-object v1
.end method


# virtual methods
.method protected final whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveInlineSuggestions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 329
    .local v1, "impl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "ui: [%s] - [%d]  [%d]\n"

    invoke-virtual {p2, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 330
    .end local v1    # "impl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 336
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 337
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.autofill.InlineSuggestionRenderService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$2;

    invoke-direct {v0, p0}, Landroid/service/autofill/InlineSuggestionRenderService$2;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;)V

    .line 362
    invoke-virtual {v0}, Landroid/service/autofill/InlineSuggestionRenderService$2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 338
    return-object v0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.autofill.InlineSuggestionRenderService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;
    .locals 1

    .line 390
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;
    .locals 2
    .param p1, "presentation"    # Landroid/service/autofill/InlinePresentation;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service implementation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implement onRenderSuggestion()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist startIntentSender(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 376
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onStartIntentSender(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
