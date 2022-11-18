.class final Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;
.super Lcom/android/internal/view/inline/IInlineContentCallback$Stub;
.source "InlineSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineContentCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallbackImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .locals 1
    .param p1, "callbackImpl"    # Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 213
    invoke-direct {p0}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;->mCallbackImpl:Ljava/lang/ref/WeakReference;

    .line 215
    return-void
.end method


# virtual methods
.method public blacklist onClick()V
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;->mCallbackImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 231
    .local v0, "callbackImpl":Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->onClick()V

    .line 234
    :cond_0
    return-void
.end method

.method public blacklist onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 1
    .param p1, "content"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 221
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;->mCallbackImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 222
    .local v0, "callbackImpl":Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    .line 225
    :cond_0
    return-void
.end method

.method public blacklist onLongClick()V
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;->mCallbackImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 240
    .local v0, "callbackImpl":Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->onLongClick()V

    .line 243
    :cond_0
    return-void
.end method
