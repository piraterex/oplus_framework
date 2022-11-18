.class public Landroid/text/InputFilter$AllCaps;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllCaps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;
    }
.end annotation


# instance fields
.field private final greylist-max-o mLocale:Ljava/util/Locale;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 77
    new-instance v0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;

    invoke-direct {v0, p1, p2, p3}, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;-><init>(Ljava/lang/CharSequence;II)V

    .line 79
    .local v0, "wrapper":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 80
    .local v1, "lowerOrTitleFound":Z
    sub-int v2, p3, p2

    .line 81
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 84
    invoke-static {v0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 85
    .local v4, "cp":I
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 90
    .end local v3    # "i":I
    .end local v4    # "cp":I
    :cond_2
    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 91
    return-object v3

    .line 94
    :cond_3
    instance-of v4, p1, Landroid/text/Spanned;

    .line 95
    .local v4, "copySpans":Z
    iget-object v5, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    invoke-static {v5, v0, v4}, Landroid/text/TextUtils;->toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v5

    .line 96
    .local v5, "upper":Ljava/lang/CharSequence;
    if-ne v5, v0, :cond_4

    .line 100
    return-object v3

    .line 103
    :cond_4
    if-eqz v4, :cond_5

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3
.end method
