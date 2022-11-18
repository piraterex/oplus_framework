.class public Landroid/service/autofill/InlineSuggestionRoot;
.super Landroid/widget/FrameLayout;
.source "InlineSuggestionRoot.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionRoot"


# instance fields
.field private final blacklist mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field private blacklist mDownX:F

.field private blacklist mDownY:F

.field private final blacklist mTouchSlop:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/service/autofill/IInlineSuggestionUiCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 50
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mTouchSlop:I

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/autofill/InlineSuggestionRoot;->setFocusable(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 59
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownX:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownY:F

    .line 66
    :pswitch_2
    iget v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownX:F

    iget v1, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownY:F

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 66
    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    .line 68
    .local v0, "distance":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "isSecure":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 72
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRoot;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v3

    .line 73
    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRoot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 72
    invoke-interface {v2, v3, v4}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "InlineSuggestionRoot"

    const-string v4, "RemoteException transferring touch focus to IME"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "distance":F
    .end local v1    # "isSecure":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
