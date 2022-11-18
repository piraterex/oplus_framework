.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mLocale:Ljava/util/Locale;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 49
    iget-boolean v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    if-nez v0, :cond_0

    .line 50
    const-string v0, "AllCapsTransformationMethod"

    const-string v1, "Caller did not enable length changes; not transforming text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object p1

    .line 54
    :cond_0
    if-nez p1, :cond_1

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    .local v0, "locale":Ljava/util/Locale;
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 60
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    .line 62
    :cond_2
    if-nez v0, :cond_3

    .line 63
    iget-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 65
    :cond_3
    instance-of v1, p1, Landroid/text/Spanned;

    .line 66
    .local v1, "copySpans":Z
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 72
    return-void
.end method

.method public greylist-max-o setLengthChangesAllowed(Z)V
    .locals 0
    .param p1, "allowLengthChanges"    # Z

    .line 76
    iput-boolean p1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    .line 77
    return-void
.end method
