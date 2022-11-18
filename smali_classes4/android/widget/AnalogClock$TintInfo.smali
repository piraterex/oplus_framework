.class final Landroid/widget/AnalogClock$TintInfo;
.super Ljava/lang/Object;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TintInfo"
.end annotation


# instance fields
.field blacklist mHasTintBlendMode:Z

.field blacklist mHasTintList:Z

.field blacklist mTintBlendMode:Landroid/graphics/BlendMode;

.field blacklist mTintList:Landroid/content/res/ColorStateList;

.field final synthetic blacklist this$0:Landroid/widget/AnalogClock;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AnalogClock;)V
    .locals 0

    .line 893
    iput-object p1, p0, Landroid/widget/AnalogClock$TintInfo;->this$0:Landroid/widget/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;)V

    return-void
.end method


# virtual methods
.method blacklist apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 904
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 906
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 908
    .local v0, "newDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_1

    .line 909
    iget-object v1, p0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 912
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v1, :cond_2

    .line 913
    iget-object v1, p0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 917
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 918
    iget-object v1, p0, Landroid/widget/AnalogClock$TintInfo;->this$0:Landroid/widget/AnalogClock;

    invoke-virtual {v1}, Landroid/widget/AnalogClock;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 921
    :cond_3
    return-object v0
.end method
