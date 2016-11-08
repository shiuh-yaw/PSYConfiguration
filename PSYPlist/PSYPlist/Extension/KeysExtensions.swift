//
//  KeysExtensions.swift
//  Space
//
//  Created by Shiuh Yaw Phang on 01/11/2016.
//  Copyright © 2016 Shiuh Yaw Phang. All rights reserved.
//

import Foundation

extension Keys {
    
    static let authKey = Key<String>("keys.AuthKey")
    static let refreshTokenKey = Key<String>("keys.RefreshTokenKey")
    static let appIdKey = Key<String>("keys.AppIdKey")
    static let UUIDkey = Key<String>("keys.UUIDkey")
    static let deviceModelNameKey = Key<String>("keys.DeviceModelNameKey")
    static let selectedLocationKey = Key<String>("keys.SelectedLocationKey")
    static let loadMemberKey = Key<String>("keys.LoadMemberKey")
    
    static let mainViewKey = Key<String>("viewKeys.MainViewKey")
    static let statusViewKey = Key<String>("viewKeys.StatusViewKey")
    static let eventScannerViewKey = Key<String>("viewKeys.EventScannerViewKey")
    static let eventSlotViewKey = Key<String>("viewKeys.EventSlotViewKey")
    static let formViewKey = Key<String>("viewKeys.FormViewKey")
    static let eventViewKey = Key<String>("viewKeys.EventViewKey")
    static let eventListViewKey = Key<String>("viewKeys.EventListViewKey")
    static let hintViewKey = Key<String>("viewKeys.HintViewKey")
    static let scannerViewKey = Key<String>("viewKeys.ScannerViewKey")
    static let orderStatusViewKey = Key<String>("viewKeys.OrderStatusViewKey")
    
    static let email = Key<String>("placeholder.Email")
    static let password  = Key<String>("placeholder.Password")
    static let adminId = Key<String>("placeholder.AdminId")
    static let vendorId = Key<String>("placeholder.VendorId")
    static let emailUsername = Key<String>("placeholder.EmailUsername")
    static let host  = Key<String>("placeholder.Host")
    static let event = Key<String>("placeholder.Event")
    static let firstName  = Key<String>("placeholder.FirstName")
    static let lastName = Key<String>("placeholder.LastName")
    static let coupon = Key<String>("placeholder.Coupon")
    static let titleOptional = Key<String>("placeholder.TitleOptional")
    
    
    static let timeInterval = Key<Float>("interval.TimeInterval")
    static let formInterval = Key<Float>("interval.FormInterval")
    static let StatusInterval = Key<Float>("interval.StatusInterval")
    static let eventInterval = Key<Float>("interval.EventInterval")
    static let clockInterval = Key<Float>("interval.ClockInterval")
    static let scheduledEventInterval = Key<Float>("interval.ScheduledEventInterval")
    static let currentEventInterval = Key<Float>("interval.CurrentEventInterval")
    static let eventListInterval = Key<Float>("interval.EventListInterval")
    static let eventScannerInterval = Key<Float>("interval.EventScannerInterval")
    static let eventSlotInterval = Key<Float>("interval.EventSlotInterval")
    static let hintInterval = Key<Float>("interval.HintInterval")
    static let loadMemberInterval = Key<Float>("interval.LoadMemberInterval")
    static let scannerInterval = Key<Float>("interval.ScannerInterval")
    static let orderStatusInterval = Key<Float>("interval.OrderStatusInterval")
    
    static let yMdTHmsZ = Key<String>("date.yMdTHmsZ")
    static let yMd = Key<String>("date.yMd")
    static let hhmm = Key<String>("date.HHmm")
    static let defaultTimezone = Key<String>("date.DefaultTimezone")
    
    static let searchWidth = Key<Float>("viewSize.searchView.width")
    static let hintWidth = Key<Float>("viewSize.hintView.width")
    static let hintHeight = Key<Float>("viewSize.hintView.height")
    
    static let networkTimeout = Key<Float>("network.TimeoutInterval")
    
    static let statusViewIdentifier = Key<String>("viewIdentifier.StatusViewIdentifier")
    static let statusPlanViewIdentifier = Key<String>("viewIdentifier.StatusPlanViewIdentifier")
    static let statusVisitorMeetingIdentifier = Key<String>("viewIdentifier.StatusVisitorMeetingIdentifier")
    static let statusVisitorTourIdentifier = Key<String>("viewIdentifier.StatusVisitorTourIdentifier")
    static let statusVisitorRedempIdentifier = Key<String>("viewIdentifier.StatusVisitorRedempIdentifier")
    static let statusMemberDayPassIdentifier = Key<String>("viewIdentifier.StatusMemberDayPassIdentifier")
    static let statusMemberMeetingIdentifier = Key<String>("viewIdentifier.StatusMemberMeetingIdentifier")
    static let statusEventIdentifier = Key<String>("viewIdentifier.StatusEventIdentifier")
    static let statusVendorPairIdentifier = Key<String>("viewIdentifier.StatusVendorPairIdentifier")
    static let statusVendorIdentifier = Key<String>("viewIdentifier.StatusVendorIdentifier")

    static let domainURL = Key<String>("path.DomainURL")
    static let tncURL = Key<String>("path.TnCURL")

    static let memberNo = Key<Float>("MemberNo")
}

