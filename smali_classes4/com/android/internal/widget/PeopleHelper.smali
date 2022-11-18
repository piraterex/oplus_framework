.class public Lcom/android/internal/widget/PeopleHelper;
.super Ljava/lang/Object;
.source "PeopleHelper.java"


# static fields
.field private static final blacklist COLOR_SHIFT_AMOUNT:F = 60.0f

.field private static final blacklist IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist mAvatarSize:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    const-string v0, "[\\p{C}\\p{Z}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PeopleHelper;->IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    nop

    .line 57
    const-string v0, "[!@#$%&*()_+=|<>?{}\\[\\]~-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PeopleHelper;->SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private blacklist findColor(Ljava/lang/CharSequence;I)I
    .locals 11
    .param p1, "senderName"    # Ljava/lang/CharSequence;
    .param p2, "layoutColor"    # I

    .line 133
    invoke-static {p2}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    .line 134
    .local v0, "luminance":D
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    .line 137
    .local v2, "shift":F
    float-to-double v3, v2

    const-wide v5, 0x3fd3333340000000L    # 0.30000001192092896

    sub-double v7, v5, v0

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float v2, v3

    .line 138
    float-to-double v3, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v0

    sub-double/2addr v5, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v2, v3

    .line 139
    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-static {p2, v3}, Lcom/android/internal/util/ContrastColorUtil;->getShiftedColor(II)I

    move-result v3

    return v3
.end method

.method private blacklist getPureName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 147
    sget-object v0, Lcom/android/internal/widget/PeopleHelper;->IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$animateViewForceHidden$0(Lcom/android/internal/widget/CachingIconView;Z)V
    .locals 0
    .param p0, "view"    # Lcom/android/internal/widget/CachingIconView;
    .param p1, "forceHidden"    # Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    return-void
.end method


# virtual methods
.method public blacklist animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V
    .locals 5
    .param p1, "view"    # Lcom/android/internal/widget/CachingIconView;
    .param p2, "forceHidden"    # Z

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->willBeForceHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 79
    .local v0, "nowForceHidden":Z
    :goto_1
    if-ne p2, v0, :cond_2

    .line 81
    return-void

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 84
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setWillBeForceHidden(Z)V

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 86
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 87
    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 88
    if-eqz p2, :cond_5

    const/4 v3, 0x0

    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 89
    if-eqz p2, :cond_6

    sget-object v2, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xa0

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    goto :goto_5

    .line 94
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CachingIconView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 96
    :goto_5
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 97
    return-void
.end method

.method public blacklist createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 9
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "symbol"    # Ljava/lang/String;
    .param p3, "layoutColor"    # I

    .line 111
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/internal/widget/PeopleHelper;->SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 112
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 120
    .local v2, "radius":F
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/PeopleHelper;->findColor(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 121
    .local v4, "color":I
    iget-object v5, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v5, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    invoke-static {v4}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v5, v7

    const/4 v6, 0x1

    if-lez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 124
    .local v5, "needDarkText":Z
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_2

    const/high16 v8, -0x1000000

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v7, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v6, :cond_3

    iget v6, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float v6, v6

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float v6, v6

    const v8, 0x3e99999a    # 0.3f

    :goto_2
    mul-float/2addr v6, v8

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    iget-object v6, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v3

    sub-float v3, v2, v6

    float-to-int v3, v3

    .line 127
    .local v3, "yPos":I
    int-to-float v6, v3

    iget-object v7, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    return-object v6

    .line 113
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "radius":F
    .end local v3    # "yPos":I
    .end local v4    # "color":I
    .end local v5    # "needDarkText":Z
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mContext:Landroid/content/Context;

    const v1, 0x1080633

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 114
    .local v0, "avatarIcon":Landroid/graphics/drawable/Icon;
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/PeopleHelper;->findColor(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 115
    return-object v0
.end method

.method public blacklist findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PeopleHelper;->getPureName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "pureName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    return-object p2

    .line 162
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "ignore":Ljava/lang/RuntimeException;
    return-object p2
.end method

.method public blacklist findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 172
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "nameString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ ]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 175
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "first":Ljava/lang/String;
    aget-object v3, v1, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "second":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 181
    .end local v2    # "first":Ljava/lang/String;
    .end local v3    # "second":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/android/internal/widget/PeopleHelper;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    return-void
.end method

.method public blacklist mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingGroup;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 194
    .local v0, "uniqueNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/CharSequence;Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 195
    .local v1, "uniqueCharacters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 196
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 197
    .local v3, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 198
    .local v4, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    goto :goto_1

    .line 201
    :cond_0
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 202
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "charPrefix":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 204
    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 209
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 210
    .local v7, "existingName":Ljava/lang/CharSequence;
    if-eqz v7, :cond_2

    .line 211
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/PeopleHelper;->findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/PeopleHelper;->findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v7    # "existingName":Ljava/lang/CharSequence;
    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {v1, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "senderName":Ljava/lang/CharSequence;
    .end local v6    # "charPrefix":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "i":I
    :cond_5
    return-object v0
.end method

.method public blacklist maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V
    .locals 5
    .param p2, "isOneToOne"    # Z
    .param p3, "conversationTitle"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 230
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 231
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    .line 232
    .local v2, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 233
    .local v3, "messageSender":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 234
    .local v4, "canHide":Z
    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setCanHideSenderIfFirst(Z)V

    .line 230
    .end local v2    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "messageSender":Ljava/lang/CharSequence;
    .end local v4    # "canHide":Z
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
