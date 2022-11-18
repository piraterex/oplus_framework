.class public final Landroid/media/tv/tuner/filter/IpCidChangeEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "IpCidChangeEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mCid:I


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0
    .param p1, "cid"    # I

    .line 33
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 34
    iput p1, p0, Landroid/media/tv/tuner/filter/IpCidChangeEvent;->mCid:I

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist getIpCid()I
    .locals 1

    .line 44
    iget v0, p0, Landroid/media/tv/tuner/filter/IpCidChangeEvent;->mCid:I

    return v0
.end method
