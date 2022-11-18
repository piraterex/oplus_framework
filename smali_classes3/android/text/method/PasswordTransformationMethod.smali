.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$Visible;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# static fields
.field private static greylist-max-p DOT:C

.field private static greylist sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDOT()C
    .locals 1

    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 269
    const/16 v0, 0x2022

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/PasswordTransformationMethod;
    .locals 1

    .line 65
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    .line 66
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 69
    return-object v0
.end method

.method private static greylist-max-o removeVisibleSpans(Landroid/text/Spannable;)V
    .locals 3
    .param p0, "sp"    # Landroid/text/Spannable;

    .line 134
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 135
    .local v0, "old":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 136
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 119
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 75
    return-void
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 40
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 49
    .local v0, "sp":Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 51
    .local v1, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 52
    aget-object v4, v1, v2

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 57
    new-instance v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v2, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    const/16 v4, 0x22

    invoke-interface {v0, v2, v3, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 61
    .end local v0    # "sp":Landroid/text/Spannable;
    .end local v1    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_1
    new-instance v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v0, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 124
    if-nez p3, :cond_0

    .line 125
    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 126
    move-object v0, p2

    check-cast v0, Landroid/text/Spannable;

    .line 128
    .local v0, "sp":Landroid/text/Spannable;
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 131
    .end local v0    # "sp":Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 79
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 81
    .local v0, "sp":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 83
    .local v1, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 84
    return-void

    .line 94
    :cond_0
    const/4 v2, 0x0

    .line 95
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-nez v2, :cond_1

    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 96
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/view/View;

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 100
    return-void

    .line 103
    :cond_2
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v3

    .line 104
    .local v3, "pref":I
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_3

    .line 105
    if-lez p4, :cond_3

    .line 106
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 108
    const/4 v4, 0x1

    if-ne p4, v4, :cond_3

    .line 109
    new-instance v4, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {v4, v0, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int v5, p2, p4

    const/16 v6, 0x21

    invoke-interface {v0, v4, p2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 115
    .end local v0    # "sp":Landroid/text/Spannable;
    .end local v1    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "pref":I
    :cond_3
    return-void
.end method
