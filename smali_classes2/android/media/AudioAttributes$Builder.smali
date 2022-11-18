.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist PRIVACY_SENSITIVE_DEFAULT:I = -0x1

.field private static final blacklist PRIVACY_SENSITIVE_DISABLED:I = 0x0

.field private static final blacklist PRIVACY_SENSITIVE_ENABLED:I = 0x1


# instance fields
.field private greylist-max-o mBundle:Landroid/os/Bundle;

.field private greylist-max-o mContentType:I

.field private greylist-max-o mFlags:I

.field private blacklist mIsContentSpatialized:Z

.field private blacklist mMuteHapticChannels:Z

.field private blacklist mPrivacySensitive:I

.field private greylist-max-o mSource:I

.field private blacklist mSpatializationBehavior:I

.field private blacklist mSystemUsage:I

.field private greylist-max-o mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mUsage:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 754
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 755
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 756
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 757
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 758
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 759
    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 760
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 761
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 763
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 778
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 754
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 755
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 756
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 757
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 758
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 759
    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 760
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 761
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 763
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 786
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 787
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 788
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 789
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 790
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 791
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 792
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->isContentSpatialized()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 793
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSpatializationBehavior()I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 794
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 795
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 797
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1096
    if-eqz p1, :cond_1

    .line 1099
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 1102
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1104
    :goto_0
    return-object p0

    .line 1097
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1116
    return-object p0
.end method

.method public whitelist build()Landroid/media/AudioAttributes;
    .locals 6

    .line 806
    new-instance v0, Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes-IA;)V

    .line 807
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmContentType(Landroid/media/AudioAttributes;I)V

    .line 809
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 810
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    if-ne v1, v2, :cond_0

    .line 811
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    goto :goto_0

    .line 813
    :cond_0
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    goto :goto_0

    .line 816
    :cond_1
    iget v3, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    if-ne v3, v2, :cond_b

    .line 817
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    .line 825
    :goto_0
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v1

    const/4 v3, 0x5

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 829
    :pswitch_0
    invoke-static {v0, v3}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    .line 830
    nop

    .line 835
    :goto_1
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmSource(Landroid/media/AudioAttributes;I)V

    .line 836
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 837
    iget-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    if-eqz v1, :cond_2

    .line 838
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 840
    :cond_2
    iget-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    if-eqz v1, :cond_3

    .line 841
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 843
    :cond_3
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 844
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    const v5, 0x8000

    or-int/2addr v1, v5

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 847
    :cond_4
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    if-ne v1, v2, :cond_7

    .line 850
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    if-ne v1, v3, :cond_5

    goto :goto_2

    .line 854
    :cond_5
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_3

    .line 852
    :cond_6
    :goto_2
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_3

    .line 856
    :cond_7
    if-ne v1, v4, :cond_8

    .line 857
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_3

    .line 859
    :cond_8
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 861
    :goto_3
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmTags(Landroid/media/AudioAttributes;Ljava/util/HashSet;)V

    .line 862
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFormattedTags(Landroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 864
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmBundle(Landroid/media/AudioAttributes;Landroid/os/Bundle;)V

    .line 868
    :cond_9
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_a

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    .line 870
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 872
    :cond_a
    return-object v0

    .line 819
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set both usage and system usage on same builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o replaceFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 1084
    const v0, 0x1f7ff

    and-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1085
    return-object p0
.end method

.method public blacklist replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/AudioAttributes$Builder;"
        }
    .end annotation

    .line 1126
    .local p1, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 1127
    return-object p0
.end method

.method public whitelist setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "capturePolicy"    # I

    .line 1044
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {p1, v0}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1045
    return-object p0
.end method

.method public whitelist setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 2
    .param p1, "preset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1245
    packed-switch p1, :pswitch_data_0

    .line 1256
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid capture preset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1253
    :pswitch_1
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1254
    nop

    .line 1258
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "contentType"    # I

    .line 953
    packed-switch p1, :pswitch_data_0

    .line 962
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 960
    nop

    .line 964
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 996
    and-int/lit16 p1, p1, 0x1d1

    .line 997
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 998
    return-object p0
.end method

.method public blacklist setForCallRedirection()Landroid/media/AudioAttributes$Builder;
    .locals 2

    .line 1317
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1318
    return-object p0
.end method

.method public whitelist setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .param p1, "muted"    # Z

    .line 1293
    iput-boolean p1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 1294
    return-object p0
.end method

.method public whitelist setHotwordModeEnabled(Z)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1014
    if-eqz p1, :cond_0

    .line 1015
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_0

    .line 1017
    :cond_0
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1019
    :goto_0
    return-object p0
.end method

.method public whitelist setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "preset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1271
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7cd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1281
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_1

    .line 1279
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1283
    :goto_1
    return-object p0
.end method

.method public whitelist setInternalContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .param p1, "contentType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 976
    packed-switch p1, :pswitch_data_0

    .line 981
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 978
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 979
    nop

    .line 984
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7cd
        :pswitch_0
    .end packed-switch
.end method

.method public greylist setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "streamType"    # I

    .line 1162
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1163
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1164
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1165
    nop

    .line 1166
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1168
    .local v0, "attributes":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_0

    .line 1169
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1170
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1171
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1172
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 1173
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->isContentSpatialized()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 1174
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getSpatializationBehavior()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 1175
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 1176
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmBundle(Landroid/media/AudioAttributes;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 1177
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1180
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    :cond_0
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    if-nez v0, :cond_1

    .line 1181
    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stream type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1218
    :pswitch_0
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1219
    goto :goto_1

    .line 1215
    :pswitch_1
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1216
    goto :goto_1

    .line 1211
    :pswitch_2
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1212
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1213
    goto :goto_1

    .line 1208
    :pswitch_3
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1209
    goto :goto_1

    .line 1186
    :pswitch_4
    iget v2, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_0

    .line 1204
    :pswitch_5
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1205
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1206
    goto :goto_1

    .line 1201
    :pswitch_6
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1202
    goto :goto_1

    .line 1198
    :pswitch_7
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1199
    goto :goto_1

    .line 1195
    :pswitch_8
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1196
    goto :goto_1

    .line 1192
    :pswitch_9
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1193
    goto :goto_1

    .line 1189
    :goto_0
    :pswitch_a
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1190
    goto :goto_1

    .line 1183
    :pswitch_b
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1224
    :cond_1
    :goto_1
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    if-nez v0, :cond_2

    .line 1225
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$smusageForStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1227
    :cond_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public whitelist setIsContentSpatialized(Z)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .param p1, "isSpatialized"    # Z

    .line 1055
    iput-boolean p1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 1056
    return-object p0
.end method

.method public whitelist setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 2
    .param p1, "streamType"    # I

    .line 1146
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 1150
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 1151
    return-object p0

    .line 1147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPrivacySensitive(Z)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .param p1, "privacySensitive"    # Z

    .line 1306
    nop

    .line 1307
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 1308
    return-object p0
.end method

.method public whitelist setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "sb"    # I

    .line 1066
    packed-switch p1, :pswitch_data_0

    .line 1071
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid spatialization behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :pswitch_0
    nop

    .line 1073
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 1074
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setSystemUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "systemUsage"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 932
    invoke-static {p1}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 938
    return-object p0

    .line 935
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid system usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "usage"    # I

    .line 893
    packed-switch p1, :pswitch_data_0

    .line 914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 912
    nop

    .line 916
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
