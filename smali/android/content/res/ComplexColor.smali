.class public abstract Landroid/content/res/ComplexColor;
.super Ljava/lang/Object;
.source "ComplexColor.java"


# instance fields
.field private greylist-max-o mChangingConfigurations:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o canApplyTheme()Z
.end method

.method public greylist-max-o getChangingConfigurations()I
    .locals 1

    .line 76
    iget v0, p0, Landroid/content/res/ComplexColor;->mChangingConfigurations:I

    return v0
.end method

.method public abstract greylist-max-o getConstantState()Landroid/content/res/ConstantState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getDefaultColor()I
.end method

.method public greylist-max-o isStateful()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
.end method

.method final greylist-max-o setBaseChangingConfigurations(I)V
    .locals 0
    .param p1, "changingConfigurations"    # I

    .line 63
    iput p1, p0, Landroid/content/res/ComplexColor;->mChangingConfigurations:I

    .line 64
    return-void
.end method
