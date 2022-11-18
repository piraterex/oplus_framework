.class public interface abstract Landroid/app/INotificationChannelExt;
.super Ljava/lang/Object;
.source "INotificationChannelExt.java"


# direct methods
.method public static blacklist getLockableFields([I)[I
    .locals 5
    .param p0, "originalLockableFields"    # [I

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 46
    .local v0, "addedLockableFields":[I
    array-length v1, p0

    .line 47
    .local v1, "originalLockableFieldsLength":I
    array-length v2, v0

    .line 49
    .local v2, "addedLockableFieldsLength":I
    add-int v3, v1, v2

    new-array v3, v3, [I

    .line 50
    .local v3, "newLockableFields":[I
    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    return-object v3

    nop

    :array_0
    .array-data 4
        0x10001
        0x10002
        0x10040
        0x10004
        0x10008
        0x10010
        0x10020
        0x10080
        0x10100
    .end array-data
.end method


# virtual methods
.method public blacklist canShowBanner()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canShowIcon()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canTempShowBadge()Z
    .locals 1

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equals(Landroid/app/INotificationChannelExt;)Z
    .locals 1
    .param p1, "that"    # Landroid/app/INotificationChannelExt;

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getBadgeOption()I
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxMessages()I
    .locals 1

    .line 141
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist hashCode(I)I
    .locals 1
    .param p1, "result"    # I

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "importance"    # I

    .line 56
    return-void
.end method

.method public blacklist isChangeableFold()Z
    .locals 1

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isChangeableShowIcon()Z
    .locals 1

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFold()Z
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOpush()Z
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportNumBadge()Z
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUnimportant()Z
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 216
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    return-void
.end method

.method public blacklist setBadgeOption(I)V
    .locals 0
    .param p1, "badgeOption"    # I

    .line 175
    return-void
.end method

.method public blacklist setChangeableFold(Z)V
    .locals 0
    .param p1, "changeable"    # Z

    .line 196
    return-void
.end method

.method public blacklist setChangeableShowIcon(Z)V
    .locals 0
    .param p1, "changeable"    # Z

    .line 210
    return-void
.end method

.method public blacklist setFold(Z)V
    .locals 0
    .param p1, "fold"    # Z

    .line 114
    return-void
.end method

.method public blacklist setMaxMessage(I)V
    .locals 0
    .param p1, "max"    # I

    .line 135
    return-void
.end method

.method public blacklist setOpush(Z)V
    .locals 0
    .param p1, "isOpush"    # Z

    .line 121
    return-void
.end method

.method public blacklist setShowBanner(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 84
    return-void
.end method

.method public blacklist setShowIcon(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 148
    return-void
.end method

.method public blacklist setSupportNumBadge(Z)V
    .locals 0
    .param p1, "supportNumBadge"    # Z

    .line 161
    return-void
.end method

.method public blacklist setTempShowBadge(Z)V
    .locals 0
    .param p1, "tempShowBadge"    # Z

    .line 256
    return-void
.end method

.method public blacklist setUnimportant(Z)V
    .locals 0
    .param p1, "isUnimportant"    # Z

    .line 100
    return-void
.end method

.method public blacklist toJson(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "record"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 229
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    return-void
.end method

.method public blacklist writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    return-void
.end method
