.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final greylist-max-o CLICK:I = 0x1

.field private static final greylist-max-o DOWN:I = 0x3

.field private static greylist-max-o FROM_BELOW:Ljava/lang/Object; = null

.field private static final greylist-max-o HIDE_FLOATING_TOOLBAR_DELAY_MS:I = 0xc8

.field private static final greylist-max-o UP:I = 0x2

.field private static greylist sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 280
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private greylist-max-o action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 22
    .param p1, "what"    # I
    .param p2, "widget"    # Landroid/widget/TextView;
    .param p3, "buffer"    # Landroid/text/Spannable;

    .line 102
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 104
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 106
    .local v3, "padding":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    .line 107
    .local v4, "areaTop":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    sub-int/2addr v5, v3

    .line 109
    .local v5, "areaBot":I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 110
    .local v6, "lineTop":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .line 112
    .local v7, "lineBot":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    .line 113
    .local v8, "first":I
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    .line 115
    .local v9, "last":I
    const-class v10, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    .line 117
    .local v10, "candidates":[Landroid/text/style/ClickableSpan;
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    .line 118
    .local v11, "a":I
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    .line 120
    .local v12, "b":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 121
    .local v13, "selStart":I
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 123
    .local v14, "selEnd":I
    if-gez v13, :cond_0

    .line 124
    sget-object v15, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {v1, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    if-ltz v15, :cond_0

    .line 125
    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    move-result v15

    move v14, v15

    move v13, v15

    .line 129
    :cond_0
    const v15, 0x7fffffff

    if-le v13, v9, :cond_1

    .line 130
    move v14, v15

    move v13, v15

    .line 131
    :cond_1
    if-ge v14, v8, :cond_2

    .line 132
    const/16 v16, -0x1

    move/from16 v14, v16

    move/from16 v13, v16

    .line 134
    :cond_2
    const/16 v16, 0x0

    packed-switch p1, :pswitch_data_0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v17, v5

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v4    # "areaTop":I
    .end local v5    # "areaBot":I
    .local v17, "areaBot":I
    .local v18, "layout":Landroid/text/Layout;
    .local v19, "padding":I
    .local v20, "areaTop":I
    goto/16 :goto_5

    .line 179
    .end local v17    # "areaBot":I
    .end local v18    # "layout":Landroid/text/Layout;
    .end local v19    # "padding":I
    .end local v20    # "areaTop":I
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "padding":I
    .restart local v4    # "areaTop":I
    .restart local v5    # "areaBot":I
    :pswitch_0
    const v18, 0x7fffffff

    .line 180
    .local v18, "bestStart":I
    const v19, 0x7fffffff

    .line 182
    .local v19, "bestEnd":I
    const/16 v20, 0x0

    move/from16 v15, v18

    move-object/from16 v18, v2

    move/from16 v2, v19

    move/from16 v19, v3

    move/from16 v3, v20

    .local v2, "bestEnd":I
    .local v3, "i":I
    .local v15, "bestStart":I
    .local v18, "layout":Landroid/text/Layout;
    .local v19, "padding":I
    :goto_0
    move/from16 v20, v4

    .end local v4    # "areaTop":I
    .restart local v20    # "areaTop":I
    array-length v4, v10

    if-ge v3, v4, :cond_6

    .line 183
    aget-object v4, v10, v3

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 185
    .local v4, "start":I
    if-gt v4, v13, :cond_3

    if-ne v13, v14, :cond_5

    .line 186
    :cond_3
    if-ge v4, v15, :cond_4

    .line 187
    move v15, v4

    .line 188
    move/from16 v21, v4

    .end local v4    # "start":I
    .local v21, "start":I
    aget-object v4, v10, v3

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    .line 186
    .end local v21    # "start":I
    .restart local v4    # "start":I
    :cond_4
    move/from16 v21, v4

    .line 182
    .end local v4    # "start":I
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v20

    goto :goto_0

    .line 193
    .end local v3    # "i":I
    :cond_6
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_7

    .line 194
    invoke-static {v1, v15, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 195
    const/4 v3, 0x1

    return v3

    .line 193
    :cond_7
    move/from16 v17, v5

    goto/16 :goto_5

    .line 157
    .end local v15    # "bestStart":I
    .end local v18    # "layout":Landroid/text/Layout;
    .end local v19    # "padding":I
    .end local v20    # "areaTop":I
    .local v2, "layout":Landroid/text/Layout;
    .local v3, "padding":I
    .local v4, "areaTop":I
    :pswitch_1
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v4    # "areaTop":I
    .restart local v18    # "layout":Landroid/text/Layout;
    .restart local v19    # "padding":I
    .restart local v20    # "areaTop":I
    const/4 v2, -0x1

    .line 158
    .local v2, "bestStart":I
    const/4 v3, -0x1

    .line 160
    .local v3, "bestEnd":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v15, v10

    if-ge v4, v15, :cond_b

    .line 161
    aget-object v15, v10, v4

    invoke-interface {v1, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 163
    .local v15, "end":I
    if-lt v15, v14, :cond_9

    if-ne v13, v14, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v17, v5

    goto :goto_4

    .line 164
    :cond_9
    :goto_3
    if-le v15, v3, :cond_a

    .line 165
    move/from16 v17, v5

    .end local v5    # "areaBot":I
    .restart local v17    # "areaBot":I
    aget-object v5, v10, v4

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 166
    move v3, v15

    goto :goto_4

    .line 164
    .end local v17    # "areaBot":I
    .restart local v5    # "areaBot":I
    :cond_a
    move/from16 v17, v5

    .line 160
    .end local v5    # "areaBot":I
    .end local v15    # "end":I
    .restart local v17    # "areaBot":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v17

    goto :goto_2

    .end local v17    # "areaBot":I
    .restart local v5    # "areaBot":I
    :cond_b
    move/from16 v17, v5

    .line 171
    .end local v4    # "i":I
    .end local v5    # "areaBot":I
    .restart local v17    # "areaBot":I
    if-ltz v2, :cond_f

    .line 172
    invoke-static {v1, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 173
    const/4 v4, 0x1

    return v4

    .line 136
    .end local v17    # "areaBot":I
    .end local v18    # "layout":Landroid/text/Layout;
    .end local v19    # "padding":I
    .end local v20    # "areaTop":I
    .local v2, "layout":Landroid/text/Layout;
    .local v3, "padding":I
    .local v4, "areaTop":I
    .restart local v5    # "areaBot":I
    :pswitch_2
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v17, v5

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v4    # "areaTop":I
    .end local v5    # "areaBot":I
    .restart local v17    # "areaBot":I
    .restart local v18    # "layout":Landroid/text/Layout;
    .restart local v19    # "padding":I
    .restart local v20    # "areaTop":I
    if-ne v13, v14, :cond_c

    .line 137
    return v16

    .line 140
    :cond_c
    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v13, v14, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 142
    .local v2, "links":[Landroid/text/style/ClickableSpan;
    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    .line 143
    return v16

    .line 146
    :cond_d
    aget-object v3, v2, v16

    .line 147
    .local v3, "link":Landroid/text/style/ClickableSpan;
    instance-of v5, v3, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v5, :cond_e

    .line 148
    move-object v5, v3

    check-cast v5, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v5, v0, v4}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_5

    .line 150
    :cond_e
    invoke-virtual {v3, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 152
    nop

    .line 201
    .end local v2    # "links":[Landroid/text/style/ClickableSpan;
    .end local v3    # "link":Landroid/text/style/ClickableSpan;
    :cond_f
    :goto_5
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 272
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    .line 275
    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public whitelist canSelectArbitrarily()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 76
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 51
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 54
    :sswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    return v0

    .line 62
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 256
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 257
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .line 262
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 264
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 267
    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 269
    :goto_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 207
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_6

    .line 210
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 211
    .local v2, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 213
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 214
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 216
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 217
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 219
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 220
    .local v4, "layout":Landroid/text/Layout;
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 221
    .local v5, "line":I
    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 223
    .local v6, "off":I
    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v6, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 225
    .local v7, "links":[Landroid/text/style/ClickableSpan;
    array-length v8, v7

    if-eqz v8, :cond_5

    .line 226
    const/4 v8, 0x0

    aget-object v9, v7, v8

    .line 227
    .local v9, "link":Landroid/text/style/ClickableSpan;
    if-ne v0, v1, :cond_2

    .line 228
    instance-of v10, v9, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v10, :cond_1

    .line 229
    move-object v10, v9

    check-cast v10, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v10, p1, v8}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v9, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 234
    :cond_2
    if-nez v0, :cond_4

    .line 235
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x1c

    if-lt v8, v10, :cond_3

    .line 239
    const/16 v8, 0xc8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    .line 241
    :cond_3
    nop

    .line 242
    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 243
    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 241
    invoke-static {p2, v8, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 245
    :cond_4
    :goto_0
    return v1

    .line 247
    .end local v9    # "link":Landroid/text/style/ClickableSpan;
    :cond_5
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 251
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "line":I
    .end local v6    # "off":I
    .end local v7    # "links":[Landroid/text/style/ClickableSpan;
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 94
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 67
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
