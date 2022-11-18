.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final greylist-max-o ALT:Ljava/lang/Object;

.field private static final greylist-max-o CAP:Ljava/lang/Object;

.field private static final greylist-max-o LOCKED:I = 0x4000011

.field private static final greylist-max-o LOCKED_RETURN_VALUE:I = 0x2

.field public static final whitelist META_ALT_LOCKED:I = 0x200

.field private static final greylist-max-o META_ALT_MASK:J = 0x2020200000202L

.field public static final whitelist META_ALT_ON:I = 0x2

.field private static final greylist-max-o META_ALT_PRESSED:J = 0x20000000000L

.field private static final greylist-max-o META_ALT_RELEASED:J = 0x2000000000000L

.field private static final greylist-max-o META_ALT_USED:J = 0x200000000L

.field public static final whitelist META_CAP_LOCKED:I = 0x100

.field private static final greylist-max-o META_CAP_PRESSED:J = 0x10000000000L

.field private static final greylist-max-o META_CAP_RELEASED:J = 0x1000000000000L

.field private static final greylist-max-o META_CAP_USED:J = 0x100000000L

.field public static final greylist-max-o META_SELECTING:I = 0x800

.field private static final greylist-max-o META_SHIFT_MASK:J = 0x1010100000101L

.field public static final whitelist META_SHIFT_ON:I = 0x1

.field public static final whitelist META_SYM_LOCKED:I = 0x400

.field private static final greylist-max-o META_SYM_MASK:J = 0x4040400000404L

.field public static final whitelist META_SYM_ON:I = 0x4

.field private static final greylist-max-o META_SYM_PRESSED:J = 0x40000000000L

.field private static final greylist-max-o META_SYM_RELEASED:J = 0x4000000000000L

.field private static final greylist-max-o META_SYM_USED:J = 0x400000000L

.field private static final greylist-max-o PRESSED:I = 0x1000011

.field private static final greylist-max-o PRESSED_RETURN_VALUE:I = 0x1

.field private static final greylist-max-o RELEASED:I = 0x2000011

.field private static final greylist-max-o SELECTING:Ljava/lang/Object;

.field private static final greylist-max-o SYM:Ljava/lang/Object;

.field private static final greylist-max-o USED:I = 0x3000011


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .line 297
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 299
    .local v0, "current":I
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    .line 300
    const v1, 0x3000011

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 301
    :cond_0
    const v1, 0x2000011

    if-ne v0, v1, :cond_1

    .line 302
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 303
    :cond_1
    :goto_0
    return-void
.end method

.method public static whitelist adjustMetaAfterKeypress(J)J
    .locals 6
    .param p0, "state"    # J

    .line 521
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v4, -0x1010100000102L

    if-eqz v0, :cond_0

    .line 522
    and-long v0, p0, v4

    const-wide/16 v4, 0x1

    or-long/2addr v0, v4

    const-wide v4, 0x100000000L

    or-long p0, v0, v4

    goto :goto_0

    .line 523
    :cond_0
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 524
    and-long/2addr p0, v4

    .line 527
    :cond_1
    :goto_0
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x2020200000203L

    if-eqz v0, :cond_2

    .line 528
    and-long v0, p0, v4

    const-wide/16 v4, 0x2

    or-long/2addr v0, v4

    const-wide v4, 0x200000000L

    or-long p0, v0, v4

    goto :goto_1

    .line 529
    :cond_2
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 530
    and-long/2addr p0, v4

    .line 533
    :cond_3
    :goto_1
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x4040400000405L

    if-eqz v0, :cond_4

    .line 534
    and-long v0, p0, v4

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long p0, v0, v2

    goto :goto_2

    .line 535
    :cond_4
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 536
    and-long/2addr p0, v4

    .line 538
    :cond_5
    :goto_2
    return-wide p0
.end method

.method public static whitelist adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "content"    # Landroid/text/Spannable;

    .line 274
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 275
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 276
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public static whitelist clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1
    .param p0, "content"    # Landroid/text/Editable;
    .param p1, "states"    # I

    .line 425
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 426
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 427
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 428
    :cond_2
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 429
    :cond_3
    return-void
.end method

.method private static greylist-max-o getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # Ljava/lang/Object;
    .param p2, "on"    # I
    .param p3, "lock"    # I

    .line 252
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 253
    return v1

    .line 256
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 257
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 259
    .local v2, "flag":I
    const v3, 0x4000011

    if-ne v2, v3, :cond_1

    .line 260
    return p3

    .line 261
    :cond_1
    if-eqz v2, :cond_2

    .line 262
    return p2

    .line 264
    :cond_2
    return v1
.end method

.method public static final whitelist getMetaState(J)I
    .locals 5
    .param p0, "state"    # J

    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, "result":I
    const-wide/16 v1, 0x100

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 464
    or-int/lit16 v0, v0, 0x100

    goto :goto_0

    .line 465
    :cond_0
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 466
    or-int/lit8 v0, v0, 0x1

    .line 469
    :cond_1
    :goto_0
    const-wide/16 v1, 0x200

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 470
    or-int/lit16 v0, v0, 0x200

    goto :goto_1

    .line 471
    :cond_2
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 472
    or-int/lit8 v0, v0, 0x2

    .line 475
    :cond_3
    :goto_1
    const-wide/16 v1, 0x400

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 476
    or-int/lit16 v0, v0, 0x400

    goto :goto_2

    .line 477
    :cond_4
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 478
    or-int/lit8 v0, v0, 0x4

    .line 481
    :cond_5
    :goto_2
    return v0
.end method

.method public static final whitelist getMetaState(JI)I
    .locals 7
    .param p0, "state"    # J
    .param p2, "meta"    # I

    .line 493
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 510
    :pswitch_0
    return v2

    .line 505
    :pswitch_1
    const-wide/16 v5, 0x400

    and-long/2addr v5, p0

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    return v1

    .line 506
    :cond_0
    const-wide/16 v5, 0x4

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    return v0

    .line 507
    :cond_1
    return v2

    .line 500
    :pswitch_2
    const-wide/16 v5, 0x200

    and-long/2addr v5, p0

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2

    return v1

    .line 501
    :cond_2
    const-wide/16 v5, 0x2

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    return v0

    .line 502
    :cond_3
    return v2

    .line 495
    :pswitch_3
    const-wide/16 v5, 0x100

    and-long/2addr v5, p0

    cmp-long v5, v5, v3

    if-eqz v5, :cond_4

    return v1

    .line 496
    :cond_4
    const-wide/16 v5, 0x1

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    return v0

    .line 497
    :cond_5
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 161
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 162
    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 163
    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 164
    const/16 v2, 0x800

    invoke-static {p0, v1, v2, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    .line 161
    return v0
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I

    .line 201
    const/4 v0, 0x2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 212
    :sswitch_0
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v2, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 209
    :sswitch_1
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v2, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 206
    :sswitch_2
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v2, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 203
    :sswitch_3
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v2, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 233
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 234
    .local v0, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 236
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    .line 238
    :cond_0
    const/16 v1, 0x800

    if-ne v1, p1, :cond_2

    .line 241
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    .line 243
    return v2

    .line 245
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 247
    :cond_2
    int-to-long v1, v0

    invoke-static {v1, v2, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result v1

    return v1
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 182
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 183
    .local v0, "metaState":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 185
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    .line 187
    :cond_0
    return v0
.end method

.method public static whitelist handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 16
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 545
    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 550
    :cond_0
    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    .line 557
    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide/16 v7, 0x400

    const-wide v9, 0x40000000000L

    const-wide/high16 v11, 0x4000000000000L

    const-wide v13, 0x400000000L

    move-wide/from16 v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v1

    return-wide v1

    .line 560
    :cond_2
    return-wide p0

    .line 552
    :cond_3
    :goto_0
    const/4 v5, 0x2

    const-wide v6, 0x2020200000202L

    const-wide/16 v8, 0x200

    const-wide v10, 0x20000000000L

    const-wide/high16 v12, 0x2000000000000L

    const-wide v14, 0x200000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v1

    return-wide v1

    .line 546
    :cond_4
    :goto_1
    const/4 v5, 0x1

    const-wide v6, 0x1010100000101L

    const-wide/16 v8, 0x100

    const-wide v10, 0x10000000000L

    const-wide/high16 v12, 0x1000000000000L

    const-wide v14, 0x100000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public static whitelist handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 15
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 583
    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 588
    :cond_0
    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 594
    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    .line 595
    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide v7, 0x40000000000L

    const-wide/high16 v9, 0x4000000000000L

    const-wide v11, 0x400000000L

    move-wide v2, p0

    move-object/from16 v13, p3

    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v1

    return-wide v1

    .line 598
    :cond_2
    return-wide p0

    .line 590
    :cond_3
    :goto_0
    const/4 v5, 0x2

    const-wide v6, 0x2020200000202L

    const-wide v8, 0x20000000000L

    const-wide/high16 v10, 0x2000000000000L

    const-wide v12, 0x200000000L

    move-wide v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v1

    return-wide v1

    .line 584
    :cond_4
    :goto_1
    const/4 v5, 0x1

    const-wide v6, 0x1010100000101L

    const-wide v8, 0x10000000000L

    const-wide/high16 v10, 0x1000000000000L

    const-wide v12, 0x100000000L

    move-wide v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static whitelist isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .line 284
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .line 293
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o press(JIJJJJJ)J
    .locals 7
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "locked"    # J
    .param p7, "pressed"    # J
    .param p9, "released"    # J
    .param p11, "used"    # J

    .line 565
    move v0, p2

    move-wide v1, p3

    and-long v3, p0, p7

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    and-long v3, p0, p9

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 568
    not-long v3, v1

    and-long/2addr v3, p0

    int-to-long v5, v0

    or-long/2addr v3, v5

    or-long/2addr v3, p5

    .end local p0    # "state":J
    .local v3, "state":J
    goto :goto_1

    .line 569
    .end local v3    # "state":J
    .restart local p0    # "state":J
    :cond_1
    and-long v3, p0, p11

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 576
    :goto_0
    move-wide v3, p0

    goto :goto_1

    .line 571
    :cond_2
    and-long v3, p0, p5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 572
    not-long v3, v1

    and-long/2addr v3, p0

    .end local p0    # "state":J
    .restart local v3    # "state":J
    goto :goto_1

    .line 574
    .end local v3    # "state":J
    .restart local p0    # "state":J
    :cond_3
    int-to-long v3, v0

    or-long/2addr v3, p7

    or-long/2addr v3, p0

    .line 576
    .end local p0    # "state":J
    .restart local v3    # "state":J
    :goto_1
    return-wide v3
.end method

.method private greylist-max-o press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;

    .line 347
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 349
    .local v0, "state":I
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    .line 350
    goto :goto_0

    .line 351
    :cond_0
    const v2, 0x2000011

    const v3, 0x4000011

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 352
    invoke-interface {p1, p2, v4, v4, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 353
    :cond_1
    const v2, 0x3000011

    if-ne v0, v2, :cond_2

    .line 354
    goto :goto_0

    .line 355
    :cond_2
    if-ne v0, v3, :cond_3

    .line 356
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_3
    invoke-interface {p1, p2, v4, v4, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 359
    :goto_0
    return-void
.end method

.method private static greylist-max-o release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 4
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "pressed"    # J
    .param p7, "released"    # J
    .param p9, "used"    # J
    .param p11, "event"    # Landroid/view/KeyEvent;

    .line 603
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 613
    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    .line 605
    :pswitch_0
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 606
    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    .line 607
    :cond_0
    and-long v0, p0, p5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 608
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    .line 616
    :cond_1
    :goto_0
    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 404
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 406
    .local v0, "current":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 415
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :pswitch_0
    const v1, 0x3000011

    if-ne v0, v1, :cond_0

    .line 409
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_0
    const v1, 0x1000011

    if-ne v0, v1, :cond_1

    .line 411
    const v1, 0x2000011

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 418
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .line 317
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 319
    .local v0, "current":I
    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    .line 320
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 321
    :cond_0
    return-void
.end method

.method public static whitelist resetLockedMeta(J)J
    .locals 4
    .param p0, "state"    # J

    .line 436
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 437
    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    .line 439
    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 440
    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    .line 442
    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 443
    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    .line 445
    :cond_2
    return-wide p0
.end method

.method protected static whitelist resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "content"    # Landroid/text/Spannable;

    .line 310
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 312
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 313
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public static whitelist resetMetaState(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .line 146
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 147
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 149
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public static greylist startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .line 367
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x1000011

    invoke-interface {p1, v0, v1, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 368
    return-void
.end method

.method public static greylist stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .line 377
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 378
    return-void
.end method


# virtual methods
.method public whitelist clearMetaKeyState(JI)J
    .locals 5
    .param p1, "state"    # J
    .param p3, "which"    # I

    .line 626
    and-int/lit8 v0, p3, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x100

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 627
    const-wide v3, -0x1010100000102L

    and-long/2addr p1, v3

    .line 629
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x200

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 630
    const-wide v3, -0x2020200000203L

    and-long/2addr p1, v3

    .line 632
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 633
    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    .line 635
    :cond_2
    return-wide p1
.end method

.method public whitelist clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .line 421
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 422
    return-void
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 327
    const/4 v0, 0x1

    const/16 v1, 0x3b

    if-eq p3, v1, :cond_4

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_0

    goto :goto_1

    .line 332
    :cond_0
    const/16 v1, 0x39

    if-eq p3, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_3

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 338
    :cond_1
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_2

    .line 339
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 340
    return v0

    .line 343
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_3
    :goto_0
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 335
    return v0

    .line 328
    :cond_4
    :goto_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 329
    return v0
.end method

.method public whitelist onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 384
    const/4 v0, 0x1

    const/16 v1, 0x3b

    if-eq p3, v1, :cond_4

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_0

    goto :goto_1

    .line 389
    :cond_0
    const/16 v1, 0x39

    if-eq p3, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_3

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_2

    .line 396
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 397
    return v0

    .line 400
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 391
    :cond_3
    :goto_0
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 392
    return v0

    .line 385
    :cond_4
    :goto_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 386
    return v0
.end method
