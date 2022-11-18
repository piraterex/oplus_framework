.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto$Denylists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 695
    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$900()Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 696
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$1;

    .line 688
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAllDenylists(Ljava/lang/Iterable;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;)",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;"
        }
    .end annotation

    .line 778
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroid/updatabledriver/UpdatableDriverProto$Denylist;>;"
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 779
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1600(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Ljava/lang/Iterable;)V

    .line 780
    return-object p0
.end method

.method public blacklist addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    .line 769
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1500(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    .line 771
    return-object p0
.end method

.method public blacklist addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 751
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 752
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1300(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 753
    return-object p0
.end method

.method public blacklist addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .param p1, "builderForValue"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    .line 760
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1400(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    .line 762
    return-object p0
.end method

.method public blacklist addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .param p1, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 742
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 743
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1200(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 744
    return-object p0
.end method

.method public blacklist clearDenylists()Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    .line 786
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1700(Landroid/updatabledriver/UpdatableDriverProto$Denylists;)V

    .line 788
    return-object p0
.end method

.method public blacklist getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .param p1, "index"    # I

    .line 718
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDenylistsCount()I
    .locals 1

    .line 712
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsCount()I

    move-result v0

    return v0
.end method

.method public blacklist getDenylistsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 705
    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsList()Ljava/util/List;

    move-result-object v0

    .line 704
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 794
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 795
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1800(Landroid/updatabledriver/UpdatableDriverProto$Denylists;I)V

    .line 796
    return-object p0
.end method

.method public blacklist setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    .line 734
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1100(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    .line 736
    return-object p0
.end method

.method public blacklist setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 725
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1000(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 727
    return-object p0
.end method
