.class public final Landroid/app/search/SearchTargetEvent$Builder;
.super Ljava/lang/Object;
.source "SearchTargetEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchTargetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mFlags:I

.field private blacklist mLocation:Ljava/lang/String;

.field private blacklist mTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "actionType"    # I

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    .line 232
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iput p2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    .line 234
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "actionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 240
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    .line 242
    iput p2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/search/SearchTargetEvent;
    .locals 7

    .line 268
    new-instance v6, Landroid/app/search/SearchTargetEvent;

    iget-object v1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    iget-object v2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mLocation:Ljava/lang/String;

    iget v3, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    iget v4, p0, Landroid/app/search/SearchTargetEvent$Builder;->mFlags:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/search/SearchTargetEvent;-><init>(Ljava/util/List;Ljava/lang/String;IILandroid/app/search/SearchTargetEvent-IA;)V

    return-object v6
.end method

.method public whitelist setFlags(I)Landroid/app/search/SearchTargetEvent$Builder;
    .locals 0
    .param p1, "flags"    # I

    .line 259
    iput p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mFlags:I

    .line 260
    return-object p0
.end method

.method public whitelist setLaunchLocation(Ljava/lang/String;)Landroid/app/search/SearchTargetEvent$Builder;
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .line 250
    iput-object p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mLocation:Ljava/lang/String;

    .line 251
    return-object p0
.end method
