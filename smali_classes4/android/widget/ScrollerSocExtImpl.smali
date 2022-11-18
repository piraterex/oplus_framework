.class public Landroid/widget/ScrollerSocExtImpl;
.super Ljava/lang/Object;
.source "ScrollerSocExtImpl.java"

# interfaces
.implements Landroid/widget/IScrollerSocExt;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public whitelist hookScrollHorizontalPerfHint(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 20
    return-void
.end method

.method public whitelist setPerfHintContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    return-void
.end method
