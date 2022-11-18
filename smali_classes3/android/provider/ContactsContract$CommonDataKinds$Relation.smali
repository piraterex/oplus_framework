.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final whitelist NAME:Ljava/lang/String; = "data1"

.field public static final whitelist TYPE_ASSISTANT:I = 0x1

.field public static final whitelist TYPE_BROTHER:I = 0x2

.field public static final whitelist TYPE_CHILD:I = 0x3

.field public static final whitelist TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final whitelist TYPE_FATHER:I = 0x5

.field public static final whitelist TYPE_FRIEND:I = 0x6

.field public static final whitelist TYPE_MANAGER:I = 0x7

.field public static final whitelist TYPE_MOTHER:I = 0x8

.field public static final whitelist TYPE_PARENT:I = 0x9

.field public static final whitelist TYPE_PARTNER:I = 0xa

.field public static final whitelist TYPE_REFERRED_BY:I = 0xb

.field public static final whitelist TYPE_RELATIVE:I = 0xc

.field public static final whitelist TYPE_SISTER:I = 0xd

.field public static final whitelist TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 7258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 7317
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7318
    return-object p2

    .line 7320
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 7321
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .line 7289
    packed-switch p0, :pswitch_data_0

    .line 7306
    const v0, 0x1040648

    return v0

    .line 7305
    :pswitch_0
    const v0, 0x1040817

    return v0

    .line 7304
    :pswitch_1
    const v0, 0x1040816

    return v0

    .line 7303
    :pswitch_2
    const v0, 0x1040815

    return v0

    .line 7302
    :pswitch_3
    const v0, 0x1040814

    return v0

    .line 7300
    :pswitch_4
    const v0, 0x1040813

    return v0

    .line 7299
    :pswitch_5
    const v0, 0x1040812

    return v0

    .line 7298
    :pswitch_6
    const v0, 0x1040811

    return v0

    .line 7297
    :pswitch_7
    const v0, 0x1040810

    return v0

    .line 7296
    :pswitch_8
    const v0, 0x104080f

    return v0

    .line 7295
    :pswitch_9
    const v0, 0x104080e

    return v0

    .line 7294
    :pswitch_a
    const v0, 0x104080d

    return v0

    .line 7292
    :pswitch_b
    const v0, 0x104080b

    return v0

    .line 7291
    :pswitch_c
    const v0, 0x104080a

    return v0

    .line 7290
    :pswitch_d
    const v0, 0x1040809

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
