.class Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;
.super Landroid/view/TouchDelegate;
.source "ConversationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ConversationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchDelegateComposite"
.end annotation


# instance fields
.field private final blacklist mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->mDelegates:Ljava/util/ArrayList;

    .line 1215
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/view/TouchDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/view/TouchDelegate;

    .line 1218
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    return-void
.end method

.method public blacklist clear()V
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1223
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1228
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1229
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/TouchDelegate;

    .line 1230
    .local v3, "delegate":Landroid/view/TouchDelegate;
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1231
    invoke-virtual {v3, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1232
    const/4 v2, 0x1

    return v2

    .line 1234
    .end local v3    # "delegate":Landroid/view/TouchDelegate;
    :cond_0
    goto :goto_0

    .line 1235
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
