.class public interface abstract Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
.super Ljava/lang/Object;
.source "MessagingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MessagingLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessagingChild"
.end annotation


# static fields
.field public static final blacklist MEASURED_NORMAL:I = 0x0

.field public static final blacklist MEASURED_SHORTENED:I = 0x1

.field public static final blacklist MEASURED_TOO_SMALL:I = 0x2


# virtual methods
.method public abstract blacklist getConsumedLines()I
.end method

.method public blacklist getExtraSpacing()I
    .locals 1

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist getMeasuredType()I
.end method

.method public blacklist hasDifferentHeightWhenFirst()Z
    .locals 1

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist hideAnimated()V
.end method

.method public abstract blacklist isHidingAnimated()Z
.end method

.method public abstract blacklist recycle()V
.end method

.method public blacklist setIsFirstInLayout(Z)V
    .locals 0
    .param p1, "first"    # Z

    .line 357
    return-void
.end method

.method public abstract blacklist setMaxDisplayedLines(I)V
.end method
