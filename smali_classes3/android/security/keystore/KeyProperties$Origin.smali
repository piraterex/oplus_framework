.class public abstract Landroid/security/keystore/KeyProperties$Origin;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Origin"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o fromKeymaster(I)I
    .locals 3
    .param p0, "origin"    # I

    .line 768
    packed-switch p0, :pswitch_data_0

    .line 778
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 774
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 772
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 770
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
